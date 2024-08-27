struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<u32>, 11>;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(37992u, 24560u));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-560f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1000f, 1143f))))))));
    global2 = Struct_1(select(~global2.a, (global2.a >> (global1[_wgslsmith_index_u32(8141u, 11u)] % vec2<u32>(32u))) | (global1[_wgslsmith_index_u32(u_input.b, 11u)] | global1[_wgslsmith_index_u32(18527u, 11u)]), true) ^ global2.a);
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2029f, 431f)) * -1402f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -619f) + -1622f)))), _wgslsmith_f_op_f32(step(-1234f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -620f))))));
    var var_1 = 0u;
    var var_2 = select(~(-_wgslsmith_div_i32(-27685i, 2147483647i)), reverseBits(reverseBits(0i)), true);
    return 4613u;
}

fn func_2() -> Struct_1 {
    global2 = Struct_1(global2.a);
    global1 = array<vec2<u32>, 11>();
    let var_0 = Struct_1(~global1[_wgslsmith_index_u32(func_3(), 11u)]);
    global0 = _wgslsmith_f_op_f32(201f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(976f * 128f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1704f), _wgslsmith_f_op_f32(f32(-1f) * -804f))), global2.a.x != _wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.x, 57568u, 0u, 65409u), vec4<u32>(global2.a.x, u_input.b, u_input.b, 41453u))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-760f)) + -904f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1741f)), _wgslsmith_f_op_f32(300f + 1276f), any(vec3<bool>(true, false, true)))) + _wgslsmith_f_op_f32(sign(1243f))))));
    return Struct_1(vec2<u32>(_wgslsmith_div_u32(~76829u, select(~9958u, countOneBits(var_0.a.x), true)), _wgslsmith_div_u32(1u, u_input.b | global2.a.x) << (select(_wgslsmith_mult_u32(19556u, u_input.b), 0u, true) % 32u)));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = true;
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global2 = Struct_1(_wgslsmith_clamp_vec2_u32(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(59568u, u_input.b), vec2<u32>(global2.a.x, 33028u))) >> (~vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)), abs(max(vec2<u32>(33718u, 0u) >> (global2.a % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(arg_1.a.x, global2.a.x)))), vec2<u32>(global2.a.x, global2.a.x)));
    return Struct_1(select(select(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(4294967295u, arg_1.a.x)), ~arg_1.a), abs(arg_1.a), vec2<bool>(true, u_input.b > u_input.b)), _wgslsmith_mod_vec2_u32(select(vec2<u32>(1u, 4294967295u) << (vec2<u32>(u_input.b, 63000u) % vec2<u32>(32u)), vec2<u32>(arg_1.a.x, u_input.b), !vec2<bool>(var_1, arg_2.x)), arg_1.a), select(vec2<bool>(arg_2.x, all(vec2<bool>(arg_2.x, true))), select(arg_2, vec2<bool>(false, var_1), var_1), vec2<bool>(true != var_1, false | var_0))));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = func_4(select(u_input.a, u_input.c.x, _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1209f))), func_2(), vec2<bool>(!select(true, false, true) | true, true));
    let var_1 = Struct_2(func_2());
    var var_2 = Struct_2(var_1.a);
    let var_3 = -2147483647i;
    var var_4 = Struct_2(Struct_1(var_1.a.a));
    return var_1.a;
}

fn func_5(arg_0: Struct_1) -> f32 {
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(324f, -405f, 519f, 303f), vec4<f32>(-635f, 1891f, 1339f, -181f))), vec4<f32>(-575f, 786f, -1104f, -1328f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(317f, -312f, 312f, -296f) - vec4<f32>(-554f, 1000f, -456f, 510f))), true)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1105f, -503f, 963f, 1611f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-644f, 280f, 1367f, 919f))) + vec4<f32>(369f, 1515f, _wgslsmith_f_op_f32(1263f + 1193f), 1000f))));
    var var_1 = vec4<f32>(-564f, _wgslsmith_f_op_f32(min(-1373f, _wgslsmith_f_op_f32(select(1582f, _wgslsmith_f_op_f32(197f + -775f), any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1423f)), 1037f);
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_1.x, -1815f, all(vec3<bool>(true, all(vec2<bool>(false, false)), true))))));
    let var_2 = abs(~_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 55086u, 52906u), vec3<u32>(arg_0.a.x, 1u, 1u), vec3<u32>(0u, 1u, 14698u)), min(firstLeadingBit(vec3<u32>(0u, global2.a.x, 0u)), ~vec3<u32>(u_input.b, 111798u, 37531u))));
    var var_3 = ~(~16442u);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<u32>(global2.a.x, ~54414u);
    let var_1 = countOneBits(reverseBits((vec2<i32>(u_input.a, -2147483647i) | vec2<i32>(-2147483647i, u_input.a)) & u_input.c.yz));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -2080f);
    var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_5(func_1(_wgslsmith_div_vec4_f32(vec4<f32>(-633f, -756f, -1919f, 621f), vec4<f32>(2218f, -2224f, -945f, -367f))))), _wgslsmith_f_op_f32(select(-103f, 388f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(210f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -868f) * 1128f)))), abs(func_3()) == global2.a.x));
    var var_3 = func_4(~(_wgslsmith_sub_i32(u_input.c.x, var_1.x) >> ((var_0.x >> (func_1(vec4<f32>(-1763f, 530f, 1000f, -862f)).a.x % 32u)) % 32u)), Struct_1(vec2<u32>(~1u >> (_wgslsmith_clamp_u32(12924u, 4294967295u, 96303u) % 32u), 3240u)), select(vec2<bool>(-483f < _wgslsmith_f_op_f32(floor(1000f)), true), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, true), vec2<bool>(false, true)), false));
    var var_4 = select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), false), true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(false, true))), vec2<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false)), true)), !(!vec2<bool>(any(vec3<bool>(false, true, true)), true)), vec2<bool>(false, true));
    let var_5 = Struct_1(vec2<u32>(firstLeadingBit(u_input.b | global2.a.x) >> (1u % 32u), firstTrailingBit(abs(reverseBits(global2.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(913f))), _wgslsmith_f_op_f32(f32(-1f) * -1001f));
}

