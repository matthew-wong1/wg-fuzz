struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: i32;

var<private> global2: array<vec2<f32>, 30>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_mod_u32(~(~abs(firstTrailingBit(u_input.d))), _wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(85001u, u_input.b))), vec2<u32>(select(~u_input.d, 10477u ^ u_input.b, true), u_input.d)));
    global1 = ~(-u_input.a.x);
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1217f)))) - _wgslsmith_f_op_f32(-995f - 723f)), _wgslsmith_f_op_f32(-379f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(877f)) - 639f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-654f + -1826f), _wgslsmith_f_op_f32(1000f * 216f)))))));
    var var_2 = ~select(vec2<u32>(4294967295u, u_input.d) & (vec2<u32>(u_input.b, 5980u) ^ min(vec2<u32>(var_0, u_input.b), vec2<u32>(4294967295u, var_0))), ~(~select(vec2<u32>(1u, 0u), vec2<u32>(var_0, var_0), false)), false);
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(var_0, 30u)], true)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-446f, 1000f))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(global2[_wgslsmith_index_u32(22304u, 30u)])), global2[_wgslsmith_index_u32(var_0, 30u)]))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 1u, 30266u), 30u)], all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), false)))), global2[_wgslsmith_index_u32(var_2.x, 30u)]);
    return var_2.x;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec4<bool> {
    global1 = abs(firstTrailingBit(countOneBits(_wgslsmith_sub_i32(firstTrailingBit(u_input.a.x), 57515i << (arg_0.b.x % 32u)))));
    global1 = reverseBits(countOneBits(11349i));
    let var_0 = vec4<bool>((!all(vec3<bool>(true, false, false)) || (arg_0.a.x <= _wgslsmith_mod_i32(arg_0.a.x, -2147483647i))) || !all(vec4<bool>(false, false, true, false)), false, max(~max(1u, 33376u), _wgslsmith_add_u32(_wgslsmith_sub_u32(arg_1, 23065u), ~59182u)) == 67453u, !(!any(vec3<bool>(true, true, false))));
    let var_1 = Struct_1(arg_0.a, select(arg_0.b, arg_0.b, vec2<bool>(false, var_0.x)));
    let var_2 = select(true, var_0.x, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2049f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -449f) + _wgslsmith_f_op_f32(select(-1001f, -236f, true)))) || true);
    return vec4<bool>(any(select(vec4<bool>(var_0.x, false, select(var_0.x, var_0.x, var_0.x), all(vec4<bool>(false, true, false, true))), var_0, var_0)), false, var_0.x, true);
}

fn func_2(arg_0: vec4<u32>) -> bool {
    global1 = -(~(-1i));
    let var_0 = select(func_4(Struct_1(vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(1i, u_input.a.x), u_input.e.x), abs(arg_0.xz)), _wgslsmith_clamp_u32(~arg_0.x, ~0u, ~func_3())), vec4<bool>(!all(vec4<bool>(false, false, false, true)), false, all(func_4(Struct_1(u_input.a, vec2<u32>(5981u, arg_0.x)), _wgslsmith_mod_u32(u_input.b, 43284u)).yz), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, select(false, false, true), true, all(vec4<bool>(true, true, true, false))), !all(vec2<bool>(false, false))));
    global0 = var_0.x;
    global0 = !all(select(vec2<bool>(false, false), var_0.zw, all(var_0))) && select(true, any(!select(var_0.wy, vec2<bool>(var_0.x, var_0.x), false)), _wgslsmith_f_op_f32(295f - -1669f) < _wgslsmith_f_op_f32(select(-357f, _wgslsmith_f_op_f32(f32(-1f) * -489f), true)));
    var var_1 = _wgslsmith_mod_i32(u_input.a.x, u_input.a.x);
    return !(!var_0.x);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<u32>) -> Struct_1 {
    global2 = array<vec2<f32>, 30>();
    global1 = arg_1.a.x;
    var var_0 = arg_1;
    global2 = array<vec2<f32>, 30>();
    var var_1 = Struct_1(~arg_1.a, vec2<u32>(27211u, ~arg_1.b.x));
    return Struct_1(~max(_wgslsmith_div_vec3_i32(var_1.a, var_0.a), -vec3<i32>(u_input.a.x, -1i, u_input.c.x)) << ((~_wgslsmith_mult_vec3_u32(vec3<u32>(71607u, 1u, 1u), vec3<u32>(0u, 0u, 4294967295u)) & abs(~vec3<u32>(4294967295u, var_1.b.x, u_input.b))) % vec3<u32>(32u)), ~vec2<u32>(~(~15199u), ~32013u & (arg_3.x >> (arg_1.b.x % 32u))));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global0 = true;
    let var_0 = func_5(vec4<bool>((arg_0.x | false) || true, true, func_2(vec4<u32>(u_input.b, 1u, ~u_input.d, u_input.b)), !(!(!arg_0.x))), Struct_1(~(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.e.x)) | firstLeadingBit(vec3<i32>(u_input.e.x, 11532i, 33792i)), max(~(~vec2<u32>(1u, 7860u)), arg_2.b)), vec2<bool>(_wgslsmith_dot_vec2_i32(u_input.e.xx, u_input.e.yz & vec2<i32>(-2147483647i, -1i)) <= countOneBits(12067i), true), ~(~arg_2.b));
    var var_1 = ~u_input.c.x;
    let var_2 = func_5(!arg_0, func_5(arg_0, func_5(func_4(func_5(arg_0, arg_2, vec2<bool>(arg_0.x, arg_0.x), vec2<u32>(u_input.b, 4294967295u)), 51876u & var_0.b.x), Struct_1(~var_0.a, arg_2.b), vec2<bool>(true, arg_0.x), ~abs(vec2<u32>(37874u, 37314u))), arg_0.yw, max(var_0.b ^ countOneBits(vec2<u32>(55250u, arg_2.b.x)), abs(abs(var_0.b)))), vec2<bool>(arg_0.x, true), var_0.b);
    let var_3 = firstLeadingBit(min(67724u, ~4294967295u) >> (~var_0.b.x % 32u)) << (_wgslsmith_add_u32(_wgslsmith_mod_u32(var_2.b.x, 7297u ^ ~arg_2.b.x), abs(~countOneBits(29283u))) % 32u);
    return var_0;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    global2 = array<vec2<f32>, 30>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(239f - -858f), 1f, -1236f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(777f, -246f, 1000f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(315f, -557f, 498f), vec3<f32>(-1000f, 814f, -1271f), vec3<bool>(false, true, true))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(382f, 416f, 238f) * vec3<f32>(-242f, -469f, -252f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(979f, 181f, -1790f))))))));
    var var_1 = ~1u >> (~(~(~_wgslsmith_mod_u32(u_input.d, 2997u))) % 32u);
    let var_2 = 1u;
    var var_3 = _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(_wgslsmith_mult_i32(arg_1.a.x, u_input.e.x) >> (func_3() % 32u), _wgslsmith_div_i32(countOneBits(arg_0.a.x), _wgslsmith_add_i32(arg_0.a.x, arg_0.a.x)), arg_0.a.x)), vec3<i32>(u_input.e.x, arg_0.a.x, -1i));
    return !vec2<bool>((arg_1.b.x | 4294967295u) != _wgslsmith_add_u32(14055u, 9361u & arg_1.b.x), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    let var_0 = any(func_6(Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e.x, 2147483647i, u_input.a.x), u_input.a), vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(u_input.b, u_input.b)), func_1(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true), 647f, Struct_1(vec3<i32>(-59983i, u_input.a.x, u_input.e.x), vec2<u32>(u_input.b, 9907u))))) | true;
    let var_1 = ~vec3<u32>(func_3(), _wgslsmith_mod_u32(_wgslsmith_div_u32(29419u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(90297u, 35367u, u_input.b), select(vec3<u32>(0u, u_input.d, u_input.d), vec3<u32>(1u, 0u, u_input.d), false))), u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))), -539f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(145f, _wgslsmith_div_f32(172f, 1260f))))), -1000f);
}

