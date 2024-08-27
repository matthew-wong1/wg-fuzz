struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(456f, 1012f, vec3<i32>(14639i, 28928i, 2147483647i)), vec2<f32>(-868f, -1000f), vec2<u32>(68744u, 66519u), Struct_1(-238f, 956f, vec3<i32>(61353i, -1i, -1i)));

var<private> global1: array<vec4<bool>, 23>;

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_2, 23>;

var<private> global4: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<f32> {
    var var_0 = vec3<i32>(global0.d.c.x, -(global0.a.c.x & _wgslsmith_mult_i32(global0.a.c.x, 1i)), ~(-1i));
    global2 = select(vec3<u32>(global0.c.x, ~(~49585u), ~u_input.a) >> (reverseBits(min(vec3<u32>(u_input.a, 0u, global2.x), vec3<u32>(20283u, global0.c.x, 3801u) | vec3<u32>(u_input.a, 43124u, global2.x))) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, firstTrailingBit(u_input.a) ^ firstLeadingBit(20188u), _wgslsmith_div_u32(abs(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 18545u, u_input.a), vec3<u32>(105633u, global0.c.x, u_input.a)))), ~((vec3<u32>(global0.c.x, 1u, 46796u) ^ vec3<u32>(1u, global0.c.x, 4294967295u)) ^ ~vec3<u32>(u_input.a, 1u, global2.x))), vec3<bool>(all(vec3<bool>(true, true, any(vec3<bool>(false, true, false)))), any(vec2<bool>(true, true)), true));
    global0 = global3[_wgslsmith_index_u32(reverseBits(~global2.x), 23u)];
    var_0 = global0.d.c;
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-564f, -756f, -607f, global0.d.a)) - vec4<f32>(global0.b.x, global0.b.x, -440f, 1000f))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.a.a)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.b.x - global0.a.b), global0.b.x, true)), _wgslsmith_f_op_f32(1026f - _wgslsmith_f_op_f32(-global0.b.x)), -910f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.a.b, 1000f, global0.d.b, global0.d.a))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a.b, global0.a.b, global0.d.a, -2082f))))))));
    return vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - -347f) * -1283f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global0.b.x))))))), -817f);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(global0.b + _wgslsmith_f_op_vec2_f32(func_3()));
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(674f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -715f))))) * _wgslsmith_f_op_f32(trunc(1000f)));
    let var_3 = global3[_wgslsmith_index_u32(~countOneBits(global2.x << (4276u % 32u)), 23u)];
    global3 = array<Struct_2, 23>();
    return vec3<u32>(global0.c.x ^ var_3.c.x, _wgslsmith_mod_u32(~global2.x << ((u_input.a >> (global2.x % 32u)) % 32u), ~1u >> (arg_0.x % 32u)), countOneBits(5184u)) ^ countOneBits(arg_1.wxy << (min(arg_1.xzx, arg_1.xzy) % vec3<u32>(32u)));
}

fn func_1() -> f32 {
    var var_0 = !(!vec3<bool>(true, all(vec2<bool>(false, true)), false));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.b.x * _wgslsmith_div_f32(global0.d.b, -1000f)), global0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(500f * global0.b.x)), _wgslsmith_f_op_f32(-global0.d.a))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a, -502f, global0.d.a, global0.a.b)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1176f, -392f, 2032f, -1492f) * vec4<f32>(295f, global0.b.x, -149f, global0.d.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, global0.d.a, global0.a.b, global0.b.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.a, global0.d.b, global0.d.a, 509f) + vec4<f32>(1799f, -1390f, 1000f, global0.d.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(863f, -211f, 1035f, -211f) + vec4<f32>(global0.a.a, global0.b.x, 981f, global0.d.b))))));
    global1 = array<vec4<bool>, 23>();
    var var_2 = global3[_wgslsmith_index_u32(~(~abs(4294967295u)), 23u)];
    var var_3 = Struct_1(1377f, global0.d.b, _wgslsmith_mod_vec3_i32(-select(var_2.a.c, global0.a.c, false) << ((~vec3<u32>(48918u, var_2.c.x, global2.x) ^ func_2(var_2.c, vec4<u32>(19795u, global2.x, 37816u, 0u), Struct_1(736f, global0.a.b, vec3<i32>(11341i, global0.d.c.x, 1i)))) % vec3<u32>(32u)), vec3<i32>(-2147483647i, 1i, _wgslsmith_clamp_i32(global0.a.c.x, global0.d.c.x, ~global0.a.c.x))));
    return _wgslsmith_f_op_f32(round(998f));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    global0 = global3[_wgslsmith_index_u32(u_input.a, 23u)];
    global1 = array<vec4<bool>, 23>();
    let var_0 = Struct_2(arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b)))), vec2<u32>(~(~global2.x), _wgslsmith_clamp_u32(global0.c.x, _wgslsmith_add_u32(arg_0.x, 27759u), global2.x) >> (~min(arg_0.x, 5397u) % 32u)), global0.a);
    let var_1 = select(vec4<bool>(false, true, _wgslsmith_f_op_vec2_f32(func_3()).x == _wgslsmith_f_op_f32(f32(-1f) * -918f), !(_wgslsmith_f_op_f32(-var_0.d.a) == _wgslsmith_f_op_f32(func_1()))), vec4<bool>(!(61673u >= arg_0.x) && true, -(1i & global0.d.c.x) >= var_0.a.c.x, _wgslsmith_f_op_f32(global0.a.a + _wgslsmith_f_op_f32(min(-1345f, -2180f))) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1091f)))), true), select(select(!(!global1[_wgslsmith_index_u32(global2.x, 23u)]), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), !select(vec4<bool>(true, true, true, true), global1[_wgslsmith_index_u32(global2.x, 23u)], vec4<bool>(false, true, false, true)), !select(select(global1[_wgslsmith_index_u32(29062u, 23u)], vec4<bool>(true, true, false, true), global1[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<bool>(false, false, true, true), !global1[_wgslsmith_index_u32(43817u, 23u)])));
    var var_2 = _wgslsmith_f_op_f32(-arg_1.a);
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = firstTrailingBit(_wgslsmith_clamp_i32(-9820i, arg_0.c.x, global0.d.c.x)) & -global0.a.c.x;
    global1 = array<vec4<bool>, 23>();
    let var_1 = arg_3.x;
    var var_2 = true;
    var_2 = any(vec2<bool>(true, true)) && !((_wgslsmith_dot_vec4_u32(vec4<u32>(75606u, 91076u, 50053u, global0.c.x), vec4<u32>(global2.x, global2.x, 32252u, global0.c.x)) & 25366u) == global0.c.x);
    return Struct_2(func_4(~(~vec2<u32>(0u, 1u)), Struct_1(arg_0.a, arg_2.b, vec3<i32>(-10039i ^ arg_3.x, ~(-7154i), global0.d.c.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b) * vec2<f32>(-1315f, arg_1.a.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(484f, global0.a.b), vec2<f32>(-622f, arg_1.a.b))) - _wgslsmith_f_op_vec2_f32(global0.b + vec2<f32>(-615f, 231f))), select(vec2<bool>(false, false), vec2<bool>(true, true), true))), arg_1.b), vec2<u32>(~reverseBits(_wgslsmith_mod_u32(global0.c.x, 30875u)), ~reverseBits(u_input.a)), func_4(global2.zy, arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(global0.c, Struct_1(_wgslsmith_f_op_f32(min(186f, _wgslsmith_f_op_f32(func_1()))), global0.a.b, global0.d.c)), global3[_wgslsmith_index_u32(24294u, 23u)], Struct_1(_wgslsmith_div_f32(global0.d.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-955f, 1029f) * _wgslsmith_f_op_vec2_f32(func_3()).x)), global0.a.b, _wgslsmith_mod_vec3_i32(global0.a.c, vec3<i32>(-39685i, -78693i, global0.d.c.x << (u_input.a % 32u)))), min(~_wgslsmith_div_vec2_i32(max(vec2<i32>(-2147483647i, global0.d.c.x), global0.d.c.zx), vec2<i32>(global0.a.c.x, global0.a.c.x)), global0.a.c.yy));
    var var_1 = global0.c;
    var var_2 = vec2<bool>(!select(!all(vec3<bool>(false, false, true)), true, true), any(vec4<bool>(any(vec3<bool>(false, false, false)), all(vec3<bool>(true, true, true)), all(select(global1[_wgslsmith_index_u32(global0.c.x, 23u)], vec4<bool>(false, true, true, false), true)), firstTrailingBit(global0.a.c.x) != _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -76500i, var_0.a.c.x), global0.a.c))));
    global0 = func_5(func_4(vec2<u32>(~(0u ^ var_1.x), _wgslsmith_div_u32(_wgslsmith_mod_u32(var_1.x, var_0.c.x), var_1.x)), func_5(Struct_1(global0.a.a, _wgslsmith_f_op_f32(trunc(582f)), ~var_0.a.c), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~18258u, 6926u), 23u)], var_0.a, vec2<i32>(global0.a.c.x, -2147483647i) << (~vec2<u32>(23784u, 0u) % vec2<u32>(32u))).a), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.c.x, (firstTrailingBit(13745u) ^ (0u << (var_0.c.x % 32u))) | 61021u), 23u)], func_4(global0.c, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3()).x), -1225f, -var_0.d.c)), abs(firstLeadingBit(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(6713i, global0.a.c.x), vec2<i32>(-7558i, -26114i), vec2<i32>(15727i, 32518i)), vec2<i32>(0i, global0.a.c.x)))));
    var var_3 = ~global0.d.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-972f, 474f, -1615f))))))), _wgslsmith_add_u32(16623u << (_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, var_1.x), vec2<u32>(global2.x, var_0.c.x), var_2.x), vec2<u32>(u_input.a, global0.c.x) >> (vec2<u32>(global0.c.x, 13065u) % vec2<u32>(32u))) % 32u), 51359u), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-1434f, 1007f), var_0.b))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.a, -427f) * vec2<f32>(global0.d.a, -1041f)), _wgslsmith_div_vec2_f32(vec2<f32>(137f, var_0.d.b), var_0.b))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -877f), _wgslsmith_f_op_f32(max(global0.a.b, var_0.d.b)))))));
}

