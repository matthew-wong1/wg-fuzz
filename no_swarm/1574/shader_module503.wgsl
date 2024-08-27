struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_1 = Struct_1(2147483647i, 5573u, vec3<bool>(false, false, true));

var<private> global2: bool;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_2(true, countOneBits(~(-vec2<i32>(arg_1.b.x, u_input.b))), arg_1.c);
    global0 = Struct_3(~_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.b, arg_0.b, 0u), vec3<u32>(4294967295u, global1.b, 30739u)) & firstLeadingBit(global0.a), ~global0.a), !vec4<bool>(true, arg_1.a, !global1.c.x, arg_1.c.c.x), Struct_2(any(vec2<bool>(global1.c.x, false)), var_0.b, Struct_1(firstTrailingBit(arg_1.b.x & global0.c.c.a), arg_1.c.b, vec3<bool>(false, !global1.c.x, global0.c.a || false))), Struct_1(reverseBits(abs(u_input.a)), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(4294967295u, global1.b, arg_1.c.b) >> (global0.a % vec3<u32>(32u))), abs(global0.a >> (vec3<u32>(var_0.c.b, global0.d.b, 31341u) % vec3<u32>(32u)))), var_0.c.c));
    global0 = Struct_3(~(firstTrailingBit(global0.a << (global0.a % vec3<u32>(32u))) ^ vec3<u32>(~0u, ~arg_0.b, select(arg_0.b, 4294967295u, var_0.a))), select(vec4<bool>(false, true, true, all(!vec3<bool>(global0.b.x, arg_0.c.x, true))), !vec4<bool>(false, !global1.c.x, true, !global1.c.x), false), var_0, arg_0);
    var var_1 = select(firstTrailingBit(~(countOneBits(vec4<u32>(55219u, 0u, arg_1.c.b, 12397u)) | ~vec4<u32>(arg_0.b, arg_1.c.b, arg_1.c.b, 4294967295u))), ~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(58969u, global1.b, global0.c.c.b, 0u), vec4<u32>(6330u, global0.a.x, 1u, var_0.c.b))), true);
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(282f, -167f, !var_0.a)))))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-154f - 1358f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1785f, -747f)) - _wgslsmith_f_op_f32(abs(-1000f))), arg_0.c.x))));
}

fn func_2() -> Struct_3 {
    var var_0 = 4294967295u;
    var var_1 = 0i;
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(663f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1849f * -559f)), _wgslsmith_f_op_f32(func_3(global0.c.c, global0.c))) * vec3<f32>(1f, 1f, 1f))));
    var var_3 = Struct_3(global0.a, !global0.b, Struct_2(any(!global1.c.yz), _wgslsmith_clamp_vec2_i32(vec2<i32>(i32(-1i) * -35070i, ~(-2399i)), ~global0.c.b, vec2<i32>(13955i, 24166i) ^ global0.c.b), Struct_1(1i, ~0u, !select(global1.c, global1.c, global0.b.zxy))), global0.d);
    var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(var_3.c.b.x, global1.b, var_3.c.c.c), Struct_2(true, global0.c.b, var_3.c.c))))), var_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + 703f)), -1033f))));
    return Struct_3(firstTrailingBit(select(~var_3.a, vec3<u32>(global1.b, ~4294967295u, ~10888u), vec3<bool>(var_3.d.a >= 0i, any(vec2<bool>(false, false)), global0.d.c.x | global0.d.c.x))), var_3.b, global0.c, var_3.d);
}

fn func_1() -> Struct_3 {
    var var_0 = vec2<u32>(abs(41292u) >> (global1.b % 32u), _wgslsmith_mult_u32(global1.b, global1.b << (_wgslsmith_div_u32(reverseBits(57145u), global0.a.x) % 32u)));
    return func_2();
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: i32, arg_3: vec4<i32>) -> bool {
    global2 = false;
    global0 = func_1();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(167f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))))));
    global2 = !global1.c.x;
    return select(arg_0.d.c.x, true, true);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool, arg_3: f32) -> Struct_3 {
    var var_0 = _wgslsmith_mult_vec2_i32(select(-(arg_0.b | _wgslsmith_mod_vec2_i32(vec2<i32>(7183i, arg_0.c.a), vec2<i32>(u_input.b, 2147483647i))), ~vec2<i32>(_wgslsmith_mod_i32(-2147483647i, 43674i), global1.a), global1.c.x | all(select(vec3<bool>(arg_1.d.c.x, false, false), global0.d.c, vec3<bool>(global1.c.x, global0.c.a, global0.c.c.c.x)))), arg_0.b << (vec2<u32>(~select(1u, 181497u, false), _wgslsmith_mult_u32(arg_1.c.c.b, global1.b)) % vec2<u32>(32u)));
    let var_1 = global1.a;
    let var_2 = select(!(!(!vec3<bool>(global0.d.c.x, arg_0.a, arg_2))), global1.c, arg_0.c.c);
    let var_3 = _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_1.d.b << (_wgslsmith_add_u32(~arg_0.c.b, ~55910u) % 32u), 1u, _wgslsmith_clamp_u32(1u, ~arg_1.a.x << (4294967295u % 32u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(49378u, arg_1.a.x), global0.a.x))), ~(~vec4<u32>(firstLeadingBit(24963u), 23067u, ~1u, firstLeadingBit(arg_0.c.b))));
    let var_4 = ~vec3<u32>(var_3.x, _wgslsmith_add_u32(2002u, _wgslsmith_div_u32(~var_3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.b, 45580u, arg_0.c.b, 0u), vec4<u32>(31153u, 1u, var_3.x, var_3.x)))), 36596u);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(all(!(!vec2<bool>(global0.b.x, global0.c.a))), global0.c.b, Struct_1(2147483647i, reverseBits(_wgslsmith_div_u32(30820u, global0.c.c.b)), vec3<bool>(true, !global0.b.x, global0.c.c.c.x))), Struct_3(_wgslsmith_div_vec3_u32(global0.a, vec3<u32>(4294967295u >> (global0.c.c.b % 32u), 0u, _wgslsmith_mod_u32(global1.b, 1u))), vec4<bool>(func_4(func_1(), 702f, abs(-1i), vec4<i32>(1i, 11408i, u_input.b, global0.c.c.a) | vec4<i32>(-1i, -41517i, -30324i, -2147483647i)), -2147483647i == (28026i & global1.a), (-1i << (global1.b % 32u)) == u_input.a, !global0.d.c.x), global0.c, func_2().d), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(716f, 1000f, false)))) + 932f)));
    let var_1 = global1.c;
    var var_2 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(1151f, _wgslsmith_f_op_f32(abs(629f)), _wgslsmith_f_op_f32(func_3(global0.d, func_2().c)), max(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.a, -global0.c.c.a, ~u_input.a, ~global1.a), ~vec4<i32>(-1i, -82655i, u_input.b, -2147483647i) | firstTrailingBit(vec4<i32>(var_0.d.a, global0.d.a, u_input.b, u_input.a))), vec4<i32>(u_input.a, _wgslsmith_dot_vec4_i32(min(vec4<i32>(2147483647i, var_0.d.a, u_input.a, -105433i), vec4<i32>(u_input.a, 24626i, u_input.a, global0.c.b.x)), vec4<i32>(var_0.d.a, u_input.a, u_input.b, -1i) & vec4<i32>(37252i, 1873i, 2147483647i, global1.a)), global0.d.a, -2147483647i)), func_5(Struct_2(func_5(Struct_2(global1.c.x, var_0.c.b, Struct_1(var_0.c.b.x, var_0.c.c.b, global1.c)), Struct_3(vec3<u32>(31698u, var_0.d.b, 1969u), var_0.b, Struct_2(false, vec2<i32>(20174i, 12271i), Struct_1(global1.a, global0.d.b, vec3<bool>(false, true, var_0.b.x))), global0.c.c), false, _wgslsmith_f_op_f32(911f + -1552f)).b.x, firstLeadingBit(vec2<i32>(var_0.d.a, 1i)), var_0.c.c), func_2(), func_4(func_2(), -1329f, -1i, firstTrailingBit(vec4<i32>(47341i, 4275i, 1i, var_0.d.a)) | ~vec4<i32>(1i, global1.a, global0.c.b.x, -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1890f + 1087f) - _wgslsmith_f_op_f32(-1920f + 1252f)) - -670f)).a.zz);
}

