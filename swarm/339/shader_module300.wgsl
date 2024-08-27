struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool;

var<private> global2: Struct_2 = Struct_2(23130u, Struct_1(true, vec2<bool>(true, false), 0i, vec3<i32>(-17882i, -632i, -28746i), vec3<i32>(0i, 1i, -34727i)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>) -> bool {
    var var_0 = global2.b.b;
    let var_1 = (((-global2.b.d.x << (_wgslsmith_sub_u32(4294967295u, 54066u) % 32u)) ^ 0i) == -20977i) != all(vec3<bool>(global0.b.a, (39952u & u_input.a) > _wgslsmith_mod_u32(0u, 156u), _wgslsmith_dot_vec3_i32(vec3<i32>(-29332i, 1i, -1i), global2.b.e) <= -global0.b.d.x));
    var var_2 = ~(~global0.a);
    var var_3 = Struct_1(!any(vec3<bool>(true, true, true)), !select(select(select(global2.b.b, global2.b.b, vec2<bool>(global0.b.a, global2.b.a)), global2.b.b, false), !select(vec2<bool>(false, var_0.x), vec2<bool>(true, global2.b.b.x), true), true), -countOneBits(global2.b.d.x), vec3<i32>(1i >> (_wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(u_input.a, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(28533u, 4294967295u, 49845u, 1u), vec4<u32>(0u, 18053u, u_input.a, global2.a))) % 32u), -(1i | countOneBits(global0.b.d.x)), global0.b.c), -_wgslsmith_mod_vec3_i32(vec3<i32>(global0.b.e.x, ~(-1i), firstTrailingBit(-2147483647i)), ~_wgslsmith_div_vec3_i32(vec3<i32>(57352i, global2.b.e.x, global2.b.d.x), global0.b.e)));
    let var_4 = vec4<bool>(abs(select(firstLeadingBit(1u), abs(global0.a), var_0.x)) == firstTrailingBit(~u_input.a), true, global0.b.b.x && true, true);
    return var_4.x;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = vec2<bool>(!any(vec4<bool>(arg_3.b.x & arg_1.b.x, !global0.b.b.x, !arg_3.b.x, any(vec4<bool>(false, false, arg_3.b.x, arg_2.a)))), arg_0.b.a);
    global0 = Struct_2(~arg_0.a, global2.b);
    global1 = global0.b.b.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(549f, -736f, -133f, -1000f), vec4<f32>(1000f, 1000f, 248f, -2825f))), vec4<f32>(-1000f, 836f, 1072f, -637f))))));
    global1 = arg_1.a;
    return arg_0.b.e;
}

fn func_2() -> u32 {
    let var_0 = global0.b.b.x;
    let var_1 = global0.a;
    var var_2 = Struct_2(global0.a, Struct_1(!(0i <= -global0.b.d.x), vec2<bool>(firstLeadingBit(1u) >= ~u_input.a, any(select(vec4<bool>(true, false, global2.b.a, global0.b.b.x), vec4<bool>(global0.b.b.x, global0.b.b.x, false, true), global0.b.b.x))), _wgslsmith_mod_i32(abs(~global2.b.d.x), global0.b.c), select(vec3<i32>(_wgslsmith_mult_i32(global2.b.c, 0i), _wgslsmith_div_i32(global2.b.d.x, 17776i), 64446i), vec3<i32>(global0.b.c, -35494i, global0.b.d.x << (42822u % 32u)), global0.b.b.x), global0.b.e));
    var var_3 = Struct_1(global2.b.b.x, !select(vec2<bool>(all(global0.b.b), true), !var_2.b.b, !global0.b.b), 60306i, func_4(Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 17776u, 1u, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(global2.a, 86444u, global2.a, 0u), vec4<u32>(global0.a, var_2.a, 1u, 34604u))), Struct_1(681u <= global0.a, global0.b.b, -global2.b.c, vec3<i32>(-2147483647i, 1i, -16371i), -global2.b.e)), global2.b, global0.b, Struct_1(func_3(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-235f, -273f, 119f, -1946f)))), var_2.b.b, abs(1i), _wgslsmith_div_vec3_i32(global2.b.d, vec3<i32>(global0.b.d.x, -2147483647i, var_2.b.d.x)) >> (max(vec3<u32>(global0.a, global0.a, global0.a), vec3<u32>(4294967295u, u_input.a, global0.a)) % vec3<u32>(32u)), global0.b.d)), vec3<i32>(-2147483647i, (_wgslsmith_mod_i32(global0.b.d.x, 2147483647i) << (0u % 32u)) | max(~(-1i), -2147483647i), abs(-(~28378i))));
    var var_4 = Struct_1(abs(firstTrailingBit(u_input.a) ^ global2.a) == u_input.a, global0.b.b, -29988i, -vec3<i32>(_wgslsmith_mod_i32(-43356i << (u_input.a % 32u), _wgslsmith_mod_i32(var_2.b.c, global2.b.e.x)), -(-47535i & var_2.b.c), _wgslsmith_mod_i32(global2.b.d.x, global0.b.e.x) >> (~18031u % 32u)), select(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(global2.b.d, vec3<i32>(-2147483647i, -1i, -40757i)), ~18265i), 1i, 0i), countOneBits(countOneBits(abs(var_2.b.e))), select(vec3<bool>(true, true, true), vec3<bool>(!var_3.a, any(vec3<bool>(var_2.b.a, var_3.b.x, false)), global0.b.b.x), vec3<bool>(global2.b.b.x, false, false))));
    return u_input.a;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> vec2<f32> {
    var var_0 = Struct_2(_wgslsmith_mult_u32(func_2(), _wgslsmith_sub_u32(~u_input.a, arg_1.x)), global0.b);
    var var_1 = global2.b;
    var_1 = Struct_1(func_3(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1373f, -1353f, 1228f, -1373f), vec4<f32>(-692f, -2848f, 974f, -1588f))))))), select(select(global2.b.b, !select(vec2<bool>(var_1.b.x, true), var_0.b.b, global2.b.b.x), vec2<bool>(!var_0.b.a, var_0.b.a)), select(!vec2<bool>(var_1.b.x, var_1.b.x), !select(vec2<bool>(global2.b.b.x, false), var_1.b, var_1.a), !vec2<bool>(var_0.b.a, false)), !global2.b.a & !any(vec3<bool>(var_0.b.a, global2.b.b.x, var_0.b.b.x))), _wgslsmith_mult_i32(global2.b.e.x, firstLeadingBit(firstLeadingBit(_wgslsmith_sub_i32(var_1.d.x, 27096i)))), -vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(9421i, -26558i), vec2<i32>(var_0.b.d.x, 47415i)), select(i32(-1i) * -27261i, -2147483647i, true), -28465i), -_wgslsmith_add_vec3_i32(var_1.e, _wgslsmith_clamp_vec3_i32(var_0.b.d, ~vec3<i32>(0i, global2.b.e.x, global2.b.c), var_0.b.d)));
    var var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(firstLeadingBit(var_1.d.x), _wgslsmith_div_i32(2147483647i, 69131i)), 2850i, -1i) | global0.b.d, vec3<i32>(-firstLeadingBit(var_0.b.e.x) | _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_1.e.x, 2147483647i), ~vec3<i32>(var_1.d.x, 0i, -17200i)), 1i, var_1.d.x));
    let var_3 = min(abs(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(58632i, global2.b.d.x, var_2.x, global2.b.d.x), vec4<i32>(global0.b.d.x, var_0.b.d.x, global2.b.d.x, var_1.e.x)), vec4<i32>(global2.b.e.x, 39771i, var_0.b.c, -1i)), vec4<i32>(-77541i, var_2.x, _wgslsmith_div_i32(18496i, 1i), ~var_2.x))), _wgslsmith_mult_vec4_i32(abs(~vec4<i32>(var_1.d.x, var_0.b.c, 59448i, global2.b.e.x)) << (firstLeadingBit(~vec4<u32>(var_0.a, arg_0, 1814u, global0.a)) % vec4<u32>(32u)), -vec4<i32>(_wgslsmith_mult_i32(global2.b.d.x, var_2.x), global2.b.d.x | -46388i, var_1.d.x, _wgslsmith_sub_i32(-2147483647i, global0.b.d.x))));
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1225f, 1000f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2091f, -1175f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 850f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-166f, -1161f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(932f, 147f)))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_sub_u32(global0.a, 0u), vec3<u32>(global0.a, 22707u, 2251u))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1460f, 2184f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-416f, -1000f), vec2<f32>(572f, 234f), global2.b.b)))))) * vec2<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1432f - 391f))), _wgslsmith_f_op_f32(-1547f * -294f))));
    var var_1 = !vec4<bool>(global0.b.a, any(!vec3<bool>(true, false, global0.b.a)), !all(select(vec4<bool>(global0.b.b.x, global2.b.a, true, true), vec4<bool>(global2.b.a, global0.b.b.x, true, global2.b.b.x), vec4<bool>(false, global0.b.b.x, true, global0.b.a))), true);
    let var_2 = global2.b.b.x;
    var var_3 = Struct_2(31756u, Struct_1(select(all(vec3<bool>(global2.b.a, global2.b.a, var_1.x)), true, true), vec2<bool>(all(vec3<bool>(global2.b.a, true, false)), !all(vec2<bool>(true, global2.b.b.x))), global0.b.d.x, ~vec3<i32>(i32(-1i) * -15763i, -28886i, _wgslsmith_div_i32(-41247i, global2.b.e.x)), ~max(global0.b.d, global0.b.d)));
    let var_4 = abs(~_wgslsmith_dot_vec3_i32(vec3<i32>(23060i, 1875i, var_3.b.c), vec3<i32>(-1i, var_3.b.c, -1i) | vec3<i32>(global2.b.e.x, global2.b.d.x, 1i))) << (firstTrailingBit(~30374u) % 32u);
    var var_5 = !var_1.zw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1085f, var_0.x)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1520f - var_0.x))))), abs(global2.a), firstTrailingBit(0u), reverseBits(abs(vec2<i32>(-45027i, global2.b.e.x) ^ var_3.b.e.xz)));
}

