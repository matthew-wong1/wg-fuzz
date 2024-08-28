struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 12> = array<i32, 12>(26023i, i32(-2147483648), 0i, 0i, 2147483647i, i32(-2147483648), -11684i, 22893i, 23106i, 1i, 0i, 0i);

var<private> global2: Struct_2;

var<private> global3: Struct_2 = Struct_2(vec4<i32>(13851i, 2147483647i, -3679i, -12476i), vec2<u32>(3633u, 1u));

var<private> global4: array<Struct_2, 2>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    global2 = Struct_2(global3.a ^ _wgslsmith_mult_vec4_i32(global2.a, global3.a), _wgslsmith_div_vec2_u32(min(vec2<u32>(~u_input.b, _wgslsmith_sub_u32(31186u, global2.b.x)), global2.b), vec2<u32>(~(~global3.b.x), 4294967295u)));
    let var_0 = Struct_1(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, 0u, 4294967295u) & vec4<u32>(u_input.b, u_input.b, 45150u, 71842u), ~vec4<u32>(global2.b.x, 10282u, global2.b.x, u_input.a)) | ~vec4<u32>(4294967295u, global3.b.x, u_input.b, 4294967295u)), _wgslsmith_div_u32(firstLeadingBit(reverseBits(~4294967295u)), u_input.a), _wgslsmith_f_op_f32(select(-506f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1582f, 601f)) + _wgslsmith_f_op_f32(-1004f * -2969f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), !select(true, false, true))), abs(~(~min(global3.b, global2.b))), select(select(vec2<bool>(any(vec4<bool>(false, false, true, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true)), true), vec2<bool>(true, true), !all(vec4<bool>(true, true, true, true))));
    return 1252i;
}

fn func_2() -> bool {
    let var_0 = func_3() <= global1[_wgslsmith_index_u32(countOneBits(0u), 12u)];
    let var_1 = vec2<bool>(any(select(vec4<bool>(true, var_0, var_0, true), vec4<bool>(!var_0, var_0, var_0, true), !vec4<bool>(var_0, var_0, var_0, false))), false);
    let var_2 = _wgslsmith_sub_vec3_i32(abs(_wgslsmith_mod_vec3_i32(global2.a.wyx, _wgslsmith_clamp_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(5765u, 12u)], global3.a.x, global1[_wgslsmith_index_u32(84894u, 12u)]), vec3<i32>(global2.a.x, global2.a.x, 1i), global3.a.zwz))) << (~(~(vec3<u32>(u_input.a, 0u, u_input.a) << (vec3<u32>(global2.b.x, global2.b.x, 4294967295u) % vec3<u32>(32u)))) % vec3<u32>(32u)), vec3<i32>(global3.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.b.x, 1u), global3.b), 12u)], abs(-7539i), -41189i), -(~global3.a)), global1[_wgslsmith_index_u32(u_input.a, 12u)]));
    var var_3 = var_0;
    let var_4 = false;
    return false;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: bool) -> Struct_1 {
    let var_0 = global3.a.yxx;
    let var_1 = ~u_input.a;
    let var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -309f), -466f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_1)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), arg_1))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1, arg_1))) * _wgslsmith_f_op_f32(-410f + _wgslsmith_f_op_f32(ceil(1234f))))));
    var var_3 = Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(min(min(vec4<u32>(var_1, u_input.a, 1u, global2.b.x), vec4<u32>(global2.b.x, var_1, global2.b.x, 7971u)), vec4<u32>(76641u, 0u, 34366u, 81975u) ^ vec4<u32>(0u, global3.b.x, 4294967295u, global3.b.x)), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(94876u, 1u, global3.b.x, 104254u), vec4<u32>(global2.b.x, var_1, 4294967295u, global3.b.x), vec4<u32>(u_input.b, u_input.a, var_1, 0u))), ~(~vec4<u32>(global2.b.x, global3.b.x, global3.b.x, 0u))), ~(vec4<u32>(var_1, 78056u, 1u, 42957u) & vec4<u32>(1u, 16685u, 13172u, 4294967295u)) ^ ~abs(vec4<u32>(global2.b.x, 4294967295u, var_1, 15621u))), ~_wgslsmith_sub_u32(4294967295u, ~global3.b.x) | global3.b.x, _wgslsmith_div_f32(-976f, 2367f), vec2<u32>(global3.b.x, _wgslsmith_sub_u32(~1u, u_input.a)), vec2<bool>(true, all(vec3<bool>(true, arg_2 || arg_2, !arg_2))));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-var_3.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_3.c))))), _wgslsmith_div_f32(-131f, var_2.x))));
    return Struct_1(_wgslsmith_mult_vec4_u32(~(~var_3.a), abs(~reverseBits(var_3.a))), max(~(~global2.b.x ^ ~var_3.d.x), reverseBits(~_wgslsmith_add_u32(1u, 0u))), var_2.x, vec2<u32>(59137u, _wgslsmith_add_u32(min(abs(15833u), select(var_3.a.x, 29975u, arg_2)), ~countOneBits(var_3.d.x))), !select(var_3.e, var_3.e, !(global3.b.x >= 4294967295u)));
}

fn func_1() -> vec4<u32> {
    global3 = global4[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~((0u | global3.b.x) >> (13236u % 32u)), ~0u, 4294967295u), 2u)];
    var var_0 = global3.a.wzw;
    let var_1 = func_4(all(vec2<bool>(true, true)), 1f, all(vec3<bool>(true, any(vec4<bool>(false, false, true, true)), true)) != all(vec4<bool>(func_2(), true, all(vec4<bool>(true, false, false, true)), all(vec4<bool>(false, true, true, false)))));
    global3 = Struct_2(vec4<i32>(max(~(-12805i), global3.a.x), _wgslsmith_mult_i32(-43072i, 1i), firstTrailingBit(-min(global3.a.x, 10258i)), max(0i | global2.a.x, global3.a.x)), firstTrailingBit(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), global3.b), min(~vec2<u32>(1u, 4294967295u), abs(vec2<u32>(1u, 6815u))))));
    var var_2 = Struct_2(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, ~global2.a.x, global2.a.x, var_0.x), vec4<i32>(~(~(-1i)), global2.a.x, 1i, global2.a.x)), global2.b);
    return var_1.a;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = !(!(!vec2<bool>(arg_1.e.x, any(arg_2.e))));
    return global4[_wgslsmith_index_u32(u_input.a, 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_5(global3.a.yy, Struct_1(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(51732u, 4294967295u, 0u, 4294967295u)) ^ func_1(), _wgslsmith_mod_vec4_u32(select(vec4<u32>(1u, 40642u, 0u, 0u), vec4<u32>(1u, 9913u, 39678u, u_input.a), true), vec4<u32>(10565u, 4294967295u, global3.b.x, 0u) << (vec4<u32>(0u, u_input.b, 22289u, 1u) % vec4<u32>(32u)))), 41418u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(315f, 325f)))), func_1().zw, vec2<bool>(func_4(any(vec2<bool>(true, false)), 1807f, true).e.x, any(vec4<bool>(true, true, true, true)))), func_4(!(any(vec2<bool>(false, true)) & any(vec2<bool>(false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1019f - -294f))), _wgslsmith_mult_u32(select(global3.b.x, 0u, false), 30157u) > u_input.a), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-713f, -251f, global3.a.x <= 15877i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1877f)))), 770f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1095f + 1068f), -1000f))));
    global1 = array<i32, 12>();
    var var_0 = Struct_2(global2.a & -_wgslsmith_mult_vec4_i32(vec4<i32>(global3.a.x, global2.a.x, global1[_wgslsmith_index_u32(33997u, 12u)], global1[_wgslsmith_index_u32(12518u, 12u)]) >> (vec4<u32>(16386u, 106701u, 93747u, 0u) % vec4<u32>(32u)), vec4<i32>(global2.a.x, -40721i, global3.a.x, global2.a.x)), vec2<u32>(global2.b.x, 0u) >> (global2.b % vec2<u32>(32u)));
    let var_1 = global3.a.x;
    global1 = array<i32, 12>();
    let var_2 = func_4(true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-186f, 1407f)))))), false);
    var var_3 = ~_wgslsmith_mult_u32(~var_2.d.x, ~global2.b.x);
    global0 = (max(-3086i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(7312i, 1i, var_0.a.x, 2147483647i), global3.a, var_2.e.x), firstLeadingBit(vec4<i32>(global1[_wgslsmith_index_u32(33633u, 12u)], -2147483647i, -15985i, global1[_wgslsmith_index_u32(0u, 12u)])))) <= var_0.a.x) & any(!func_4(true | var_2.e.x, _wgslsmith_f_op_f32(select(var_2.c, 974f, true)), var_2.e.x).e);
    global3 = func_5(-global2.a.zx, var_2, Struct_1(countOneBits(~vec4<u32>(var_2.a.x, global3.b.x, 71908u, global2.b.x)), ~(~max(u_input.a, 4294967295u)), 700f, func_1().xz, !(!vec2<bool>(var_2.e.x, var_2.e.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.c, _wgslsmith_div_f32(-769f, var_2.c))), _wgslsmith_f_op_f32(-var_2.c), -858f));
    let x = u_input.a;
    s_output = StorageBuffer(21955u, _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a, ~global3.b.x), global2.b.x), var_0.a ^ ~vec4<i32>(-16113i, func_3(), -var_0.a.x, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(global2.b.x, 12u)], -6761i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.c)) + _wgslsmith_f_op_f32(abs(-1390f))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1041f, -613f)))), var_0.a.x);
}

