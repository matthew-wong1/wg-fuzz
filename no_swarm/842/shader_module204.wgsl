struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_3,
    e: i32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_5, 25> = array<Struct_5, 25>(Struct_5(1u), Struct_5(37712u), Struct_5(0u), Struct_5(0u), Struct_5(4294967295u), Struct_5(1u), Struct_5(0u), Struct_5(1u), Struct_5(68956u), Struct_5(0u), Struct_5(1u), Struct_5(24895u), Struct_5(21057u), Struct_5(13617u), Struct_5(0u), Struct_5(5792u), Struct_5(1u), Struct_5(9995u), Struct_5(1u), Struct_5(9576u), Struct_5(1u), Struct_5(4107u), Struct_5(4294967295u), Struct_5(0u), Struct_5(1u));

var<private> global2: u32 = 0u;

var<private> global3: u32 = 0u;

var<private> global4: array<i32, 30> = array<i32, 30>(-35114i, 1i, 14227i, 15863i, 2147483647i, 4351i, -2908i, 20123i, -50789i, -46078i, -69323i, 66577i, 2147483647i, -9294i, 821i, i32(-2147483648), -37212i, -7469i, 103430i, -41677i, 2147483647i, -1i, 1i, 2147483647i, -45219i, 3101i, i32(-2147483648), -1i, 0i, 31758i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    let var_0 = vec3<bool>(all(vec4<bool>(true, false, true, !arg_0)), any(vec3<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), false == select(false, false, true))), all(!select(!vec4<bool>(arg_0, arg_0, arg_0, true), select(vec4<bool>(false, false, false, arg_0), vec4<bool>(arg_0, false, false, false), arg_0), u_input.a > 9827i)));
    var var_1 = vec4<bool>(any(select(select(select(vec4<bool>(var_0.x, false, arg_0, arg_0), vec4<bool>(false, true, false, arg_0), vec4<bool>(var_0.x, true, arg_0, arg_0)), select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(true, true, arg_0, var_0.x), vec4<bool>(false, true, arg_0, true)), arg_0), select(!vec4<bool>(arg_0, true, true, true), !vec4<bool>(var_0.x, false, false, var_0.x), true), arg_0)), all(select(vec4<bool>(any(var_0), false, any(var_0), false), select(vec4<bool>(true, true, true, false), select(vec4<bool>(arg_0, false, var_0.x, arg_0), vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(true, arg_0, arg_0, true)), vec4<bool>(false, true, false, false)), true)), false, any(!(!var_0.xy)) | true);
    return vec4<i32>(-13059i, u_input.a, u_input.a, 2147483647i >> (~_wgslsmith_div_u32(~global0.a.x, firstLeadingBit(4294967295u)) % 32u));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec3<f32>) -> vec2<u32> {
    let var_0 = global1[_wgslsmith_index_u32(arg_0.d.a.b, 25u)];
    let var_1 = Struct_4(abs(max(vec2<i32>(global4[_wgslsmith_index_u32(4294967295u, 30u)], global4[_wgslsmith_index_u32(arg_0.b.b.c.x, 30u)]) ^ arg_0.a, func_3(any(vec3<bool>(arg_1.x, true, false))).yz)), Struct_2(_wgslsmith_mult_vec2_u32(global0.a, vec2<u32>(select(var_0.a, 4294967295u, true), global0.b.b)), Struct_1(arg_2.x, var_0.a, vec2<u32>(var_0.a, ~arg_0.b.a.x))), select(countOneBits(countOneBits(arg_0.c | arg_0.c)), abs(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a)) | arg_0.c, !vec4<bool>(arg_1.x, any(arg_1), u_input.a == 1i, true)), Struct_3(arg_0.b.b), u_input.a << (1324u % 32u));
    global0 = arg_0.b;
    global4 = array<i32, 30>();
    global1 = array<Struct_5, 25>();
    return countOneBits(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(var_1.b.b.b, 0u), firstTrailingBit(var_1.b.a) | ~vec2<u32>(48654u, arg_0.b.a.x))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_2(~func_4(Struct_4(arg_3.yy, Struct_2(vec2<u32>(51137u, 1u), global0.b), func_3(arg_0.x), Struct_3(global0.b), 2147483647i), !(!vec3<bool>(arg_1.x, arg_1.x, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.b.a, arg_2.x, global0.b.a))) + vec3<f32>(global0.b.a, 794f, -862f))), global0.b);
    let var_1 = ~_wgslsmith_mult_u32(~(~var_0.a.x), abs(var_0.b.b));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.b.c.x << (1u % 32u), countOneBits(var_1), ~0u) | ~vec4<u32>(var_0.b.b, global0.a.x, global0.b.c.x, var_0.a.x), firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.a.x, 46769u, 54486u, 22662u), ~vec4<u32>(global0.a.x, 86237u, 27252u, 45786u)))), var_0.a.x), 25u)];
    global2 = ~(~var_1);
    var_0 = Struct_2(firstTrailingBit(vec2<u32>(106161u, firstTrailingBit(53441u))), global0.b);
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1648f, var_0.b.a, arg_1.x)))), _wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(var_2.a, var_1, var_2.a, var_1), vec4<u32>(var_0.a.x, 60817u, var_0.a.x, var_2.a))), ~(vec4<u32>(var_2.a, global0.a.x, var_2.a, var_2.a) >> (vec4<u32>(global0.a.x, 0u, var_2.a, var_1) % vec4<u32>(32u)))), min(reverseBits(vec2<u32>(var_0.a.x, 0u)), reverseBits(~vec2<u32>(var_1, var_1)))));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: f32) -> i32 {
    var var_0 = -(u_input.a >> (countOneBits(_wgslsmith_mod_u32(global0.b.c.x, 4294967295u)) % 32u)) <= global4[_wgslsmith_index_u32(10938u, 30u)];
    var var_1 = Struct_2(global0.b.c, arg_0.a);
    let var_2 = vec3<bool>(arg_1, any(select(!select(vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(true, arg_1, true, true), vec4<bool>(arg_1, arg_1, arg_1, false)), vec4<bool>(any(vec2<bool>(false, arg_1)), 1i >= u_input.a, arg_1 && false, !arg_1), !(!vec4<bool>(arg_1, true, true, arg_1)))), arg_1);
    global3 = global0.b.b;
    let var_3 = ~_wgslsmith_mult_vec3_u32(~max(vec3<u32>(37967u, 6356u, global0.a.x), vec3<u32>(4294967295u, arg_0.a.b, global0.b.b)), ~abs(vec3<u32>(4294967295u, 0u, global0.a.x))) >> (vec3<u32>(129271u, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(arg_0.a.c.x, 25288u, 27326u)) | vec3<u32>(14618u, var_1.b.b, 4294967295u), ~(~vec3<u32>(var_1.b.c.x, arg_0.a.c.x, var_1.a.x))), 40923u) % vec3<u32>(32u));
    return ~global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~arg_0.a.c.x, var_3.x) << (global0.a.x % 32u), 30u)] & 2147483647i;
}

fn func_6(arg_0: bool, arg_1: f32) -> Struct_3 {
    global2 = 26442u;
    global4 = array<i32, 30>();
    var var_0 = Struct_2(~global0.a, Struct_1(-1568f, ~1u, ~countOneBits(reverseBits(vec2<u32>(1u, 39349u)))));
    let var_1 = ~_wgslsmith_sub_vec3_u32(reverseBits(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(47995u, 4294967295u, var_0.a.x), vec3<u32>(102361u, var_0.a.x, var_0.a.x)), select(vec3<u32>(29560u, 26451u, 0u), vec3<u32>(global0.b.c.x, var_0.b.b, global0.a.x), arg_0))), select(reverseBits(vec3<u32>(var_0.b.c.x, var_0.a.x, 9174u)) >> (countOneBits(vec3<u32>(global0.a.x, var_0.a.x, var_0.a.x)) % vec3<u32>(32u)), ~vec3<u32>(var_0.b.c.x, global0.a.x, 95547u), arg_0));
    var_0 = Struct_2(global0.b.c, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1, -380f)) + _wgslsmith_f_op_f32(select(arg_1, -460f, arg_0))), max(~global0.a.x, _wgslsmith_clamp_u32(0u, 4294967295u, global0.a.x)) | var_1.x, vec2<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(global0.a.x, 3580u), global0.a.x), ~var_0.b.c.x)));
    return Struct_3(func_2(vec4<bool>(arg_0, arg_0, true, arg_0), !select(vec4<bool>(true, false, arg_0, arg_0), select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(false, true, false, arg_0), false), !vec4<bool>(false, arg_0, true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.a, -481f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1379f, -408f))) * vec2<f32>(arg_1, arg_1)), vec4<i32>(_wgslsmith_div_i32(0i, u_input.a | -2147483647i), 0i, i32(-1i) * -u_input.a, _wgslsmith_clamp_i32(i32(-1i) * -12099i, -1i, _wgslsmith_add_i32(u_input.a, 1i)))).a);
}

fn func_7(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: u32) -> Struct_3 {
    global1 = array<Struct_5, 25>();
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1985f), 738f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1683f, arg_1.x)) + _wgslsmith_f_op_f32(-global0.b.a)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(922f - arg_0.a.a) - arg_0.a.a), _wgslsmith_f_op_f32(-global0.b.a), _wgslsmith_f_op_f32(step(1279f, func_6(true, arg_0.a.a).a.a)))), abs(arg_0.a.b) >= global0.a.x));
    global4 = array<i32, 30>();
    let var_1 = !(!all(vec4<bool>(false, true, select(false, false, false), any(vec2<bool>(false, true)))));
    return Struct_3(Struct_1(481f, _wgslsmith_div_u32(1u, arg_2), abs(select(abs(vec2<u32>(arg_0.a.b, 25687u)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.a.c.x, 4294967295u), vec2<u32>(arg_0.a.b, global0.b.c.x)), vec2<bool>(false, true)))));
}

fn func_1() -> i32 {
    var var_0 = func_7(func_6(func_5(func_2(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec2<f32>(486f, -189f), vec4<i32>(u_input.a, u_input.a, global4[_wgslsmith_index_u32(0u, 30u)], u_input.a)), true, _wgslsmith_div_f32(global0.b.a, 547f)) != global4[_wgslsmith_index_u32(firstTrailingBit(1u), 30u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1259f, -608f))) * _wgslsmith_f_op_f32(global0.b.a + _wgslsmith_f_op_f32(-global0.b.a)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-640f - global0.b.a) * global0.b.a) - -407f), global0.b.a, _wgslsmith_f_op_f32(global0.b.a - _wgslsmith_f_op_f32(abs(-407f)))), 1u);
    var var_1 = vec2<i32>(-1i) * -(~(-(vec2<i32>(u_input.a, u_input.a) << (var_0.a.c % vec2<u32>(32u)))));
    var_1 = min(vec2<i32>(u_input.a << (countOneBits(_wgslsmith_sub_u32(var_0.a.b, var_0.a.b)) % 32u), -31192i), vec2<i32>(~reverseBits(2147483647i), u_input.a));
    let var_2 = true;
    var var_3 = func_6(false, _wgslsmith_div_f32(global0.b.a, _wgslsmith_f_op_f32(global0.b.a + _wgslsmith_f_op_f32(-global0.b.a))));
    return -_wgslsmith_mod_i32(-6429i, -u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 25>();
    var var_0 = !vec2<bool>(true, (_wgslsmith_div_f32(global0.b.a, 152f) != 806f) | (select(true, true, false) == true));
    var var_1 = Struct_3(global0.b);
    var var_2 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1687f)) * _wgslsmith_f_op_f32(-702f + -519f)), _wgslsmith_div_f32(global0.b.a, _wgslsmith_f_op_f32(step(447f, 849f))))), vec4<i32>(func_1(), _wgslsmith_add_i32(~max(-26077i, global4[_wgslsmith_index_u32(var_1.a.c.x, 30u)]), ~global4[_wgslsmith_index_u32(4294967295u, 30u)]), func_1(), global4[_wgslsmith_index_u32(~4294967295u, 30u)]));
}

