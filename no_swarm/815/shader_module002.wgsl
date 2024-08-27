struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: u32,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 32>;

var<private> global2: Struct_3;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    var var_0 = (abs(1i) << (~global0.e % 32u)) | 2147483647i;
    let var_1 = ~global0.e;
    global1 = array<Struct_1, 32>();
    var var_2 = ~vec2<u32>(_wgslsmith_dot_vec3_u32(max(reverseBits(vec3<u32>(var_1, 34889u, var_1)), ~vec3<u32>(global0.c.c, 73703u, 1u)), _wgslsmith_mod_vec3_u32(vec3<u32>(global0.c.e, 8429u, global2.b.c) >> (vec3<u32>(global2.a.c, 4294967295u, 4294967295u) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(15233u, 4294967295u, 23193u)))), var_1);
    global1 = array<Struct_1, 32>();
    return select(!vec4<bool>(any(global2.a.a), !any(vec4<bool>(true, global0.c.d.x, true, global0.b.a.x)), global2.a.a.x, select(!global2.b.a.x, true, all(global2.b.a))), !(!vec4<bool>(any(vec3<bool>(global0.b.d.x, global2.b.d.x, global0.b.a.x)), false, global0.a && global2.b.d.x, false)), any(global0.b.a));
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(any(!func_3()), global0.d, Struct_1(!global2.b.a, _wgslsmith_f_op_vec2_f32(global0.b.b * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.b.x, global0.c.b.x)), global0.c.b)), global0.b.e, global0.c.d, 1u), Struct_1(vec3<bool>(false, true, _wgslsmith_f_op_f32(exp2(global2.a.b.x)) >= global2.a.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -1370f))))) + vec2<f32>(_wgslsmith_f_op_f32(-1019f + global0.d.b.x), 991f)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, global2.a.e), min(vec2<u32>(global0.d.c, 4294967295u), vec2<u32>(global0.d.c, 4294967295u))), global0.b.e, global0.d.e), vec2<bool>(func_3().x, global0.a), global2.b.e), global2.b.c);
    var var_0 = Struct_2(_wgslsmith_dot_vec3_u32(select(vec3<u32>(global2.b.c, 1u, 1u), vec3<u32>(global0.c.e, global2.b.e, 2403u) ^ vec3<u32>(1u, global2.b.c, global0.e), global0.b.a), vec3<u32>(firstLeadingBit(4294967295u), global0.c.e, global2.a.c)) > 0u, global0.d, global1[_wgslsmith_index_u32(~global2.b.e, 32u)], global2.a, ~17303u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1516f, 1779f, var_0.b.b.x, 836f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-651f, var_0.c.b.x, var_0.b.b.x, 1112f)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b.b.x, var_0.b.b.x, 483f, -1166f), vec4<f32>(1433f, global2.b.b.x, -1572f, -605f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-524f, var_0.c.b.x, global0.d.b.x, -1348f))))))))));
    let var_2 = Struct_2(true, var_0.b, Struct_1(select(vec3<bool>(false, all(global2.a.a), true), global0.d.a, !vec3<bool>(var_0.a, global0.d.a.x, true)), _wgslsmith_f_op_vec2_f32(var_0.d.b * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-878f, global2.a.b.x) - var_0.d.b) + _wgslsmith_f_op_vec2_f32(trunc(var_1.zx)))), max(global2.b.e, _wgslsmith_add_u32(global0.e, max(0u, var_0.b.e))), global0.b.d, ~((16960u ^ global0.c.c) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(16000u, 1947u), vec2<u32>(1u, 47089u)) % 32u))), Struct_1(vec3<bool>(any(func_3()), true, var_0.c.a.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(global2.b.b)))), _wgslsmith_mult_u32(~4294967295u, global0.d.e), !(!select(vec2<bool>(global0.c.a.x, global0.c.d.x), global2.b.a.zx, vec2<bool>(var_0.a, false))), var_0.e), ~min(_wgslsmith_add_u32(57211u, 23203u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.e, global2.a.c, global0.d.c), vec3<u32>(var_0.d.c, global0.b.c, var_0.e)), firstLeadingBit(vec3<u32>(1345u, 1u, global2.b.e)))));
    let var_3 = reverseBits(abs(select(select(select(vec4<u32>(41716u, var_2.d.e, global0.c.c, 1249u), vec4<u32>(var_2.d.e, global0.d.e, global2.a.c, global0.c.e), vec4<bool>(true, true, true, true)), vec4<u32>(4294967295u, 14456u, 53216u, 0u) & vec4<u32>(global2.b.c, global2.b.c, 7953u, 4294967295u), select(false, true, global0.b.a.x)), select(vec4<u32>(global0.d.e, global2.b.e, 1u, 25521u), vec4<u32>(var_2.d.e, 4294967295u, 0u, var_2.b.c), var_0.d.a.x) >> (vec4<u32>(97257u, global0.c.c, var_0.e, var_0.d.c) % vec4<u32>(32u)), global2.a.d.x || var_2.a)));
    return var_2;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global0.d.b), _wgslsmith_f_op_vec2_f32(arg_0.c.b + vec2<f32>(-767f, arg_0.d.b.x)))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.b.x, arg_0.c.b.x))))), !(!func_3().yz))));
    global0 = Struct_2(true, func_2().c, Struct_1(!func_2().b.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(global0.d.b.x, -187f), _wgslsmith_f_op_vec2_f32(-arg_0.c.b)))), 4294967295u, !arg_0.c.a.zx, func_2().c.c), func_2().d, 40960u);
    let var_1 = Struct_3(func_2().c, arg_0.c);
    let var_2 = var_1;
    var var_3 = Struct_1(global0.c.a, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -481f)), global2.b.b)))), _wgslsmith_dot_vec2_u32(~vec2<u32>(~29368u, 15241u), vec2<u32>(16670u & var_2.b.c, global2.b.e & global0.c.c)), vec2<bool>(func_3().x, any(vec3<bool>(global2.b.a.x, false, global0.a != false))), ((arg_0.d.c & firstLeadingBit(35288u)) | var_2.b.e) << (((var_2.b.e | arg_0.c.c) | 1u) % 32u));
    return Struct_1(vec3<bool>(!(arg_0.b.d.x && any(vec4<bool>(false, true, global2.b.a.x, true))), false, true), _wgslsmith_f_op_vec2_f32(floor(var_2.a.b)), global0.c.e, global2.a.a.zy, 14739u);
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    return global2.b;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>) -> vec4<f32> {
    let var_0 = vec4<i32>(-u_input.a, 1i, u_input.a, ~(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, 5141i), ~vec2<i32>(u_input.a, u_input.a)) & u_input.a));
    var var_1 = 1000f;
    let var_2 = global2.b.a;
    global0 = Struct_2(true, global0.b, global1[_wgslsmith_index_u32(countOneBits(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c, global2.a.c), arg_2))), 32u)], func_5(global0.b.a.x, func_4(func_2())), 66585u);
    var var_3 = select(true, arg_1.b.x != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(646f - global2.a.b.x)))), arg_1.c != _wgslsmith_mult_u32(reverseBits(81418u), arg_1.c));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -989f))), _wgslsmith_div_f32(global2.a.b.x, _wgslsmith_f_op_f32(step(-701f, global2.a.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_f_op_f32(global0.d.b.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.d.b.x - 338f), func_5(var_2.x, global2.b).b.x))), global2.a.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 32>();
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.b.x, -211f, 547f, 997f) * vec4<f32>(158f, -914f, 389f, -704f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-625f, global0.b.b.x, -944f, -1341f)))), vec4<f32>(_wgslsmith_f_op_f32(global0.b.b.x - global0.d.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1878f), -1639f, _wgslsmith_f_op_f32(trunc(919f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(889f, global2.b.b.x, 1089f, global0.b.b.x) - vec4<f32>(global0.b.b.x, global2.a.b.x, global2.a.b.x, global0.b.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(-1340f, global2.b, vec2<u32>(global2.b.e, global0.e))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(126f, global0.b.b.x, global0.d.b.x, global2.a.b.x))), global2.a.d.x)))));
    let var_1 = Struct_3(global2.b, Struct_1(func_4(func_2()).a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b.b) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-803f, -1170f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.wz))))), 1u, vec2<bool>(all(vec4<bool>(true, global2.a.d.x, false, false)), !any(vec4<bool>(false, global2.a.d.x, true, false))), global2.a.c));
    var var_2 = 1i | _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-u_input.a, -14796i), select(vec2<i32>(-41639i, u_input.a), select(vec2<i32>(0i, 1i), vec2<i32>(u_input.a, -1i), global0.b.d), !var_1.a.d.x)), _wgslsmith_mult_vec2_i32(firstTrailingBit(~vec2<i32>(2147483647i, u_input.a)), -vec2<i32>(u_input.a, u_input.a)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-global0.d.b);
    var_2 = _wgslsmith_mult_i32(1i, ~(~(-_wgslsmith_mult_i32(2372i, u_input.a))));
    var var_4 = ~(vec4<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(59633u, global0.b.c), vec2<u32>(global2.a.c, global2.b.c), vec2<bool>(false, global0.c.d.x)), ~vec2<u32>(4294967295u, 1u)), _wgslsmith_dot_vec2_u32(max(vec2<u32>(4294967295u, 38798u), vec2<u32>(global2.a.c, 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, global2.b.e), vec2<u32>(1u, global0.d.e), vec2<u32>(1u, 15206u))), var_1.a.c, 95203u) & ~(~vec4<u32>(0u, 1u, var_1.b.c, 5088u)));
    var var_5 = Struct_2(!any(!global0.c.a), global0.c, func_2().d, global1[_wgslsmith_index_u32(global2.b.c, 32u)], ~abs(global2.b.c));
    global2 = Struct_3(var_5.d, Struct_1(!global2.b.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_5.c.b.x) - vec2<f32>(268f, global0.c.b.x)) * vec2<f32>(876f, var_5.d.b.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1430f, -660f)), vec2<f32>(-1680f, var_0.x))), var_5.d.a.zx)), var_5.c.c, vec2<bool>(_wgslsmith_f_op_f32(min(-1522f, global0.c.b.x)) > var_1.a.b.x, func_4(func_2()).d.x), var_1.a.e));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(var_1.a.c, _wgslsmith_dot_vec2_u32(select(vec2<u32>(28015u, 0u), vec2<u32>(var_5.e, 1u), false), var_4.wx)));
}

