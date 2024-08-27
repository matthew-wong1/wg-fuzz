struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: vec2<u32> = vec2<u32>(42812u, 1u);

var<private> global3: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: f32, arg_1: i32) -> vec2<u32> {
    global2 = vec2<u32>(global2.x, abs(4294967295u));
    global0 = !vec3<bool>(global1.x, any(global3.ywy), global1.x);
    global1 = global3.zx;
    let var_0 = ~_wgslsmith_add_vec2_u32(~(~vec2<u32>(0u, u_input.b)), ~firstLeadingBit(vec2<u32>(23188u, u_input.b))) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_div_u32(43647u, u_input.b) & ~49907u), _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(0u, u_input.b)), _wgslsmith_add_vec2_u32(vec2<u32>(44203u, global2.x), vec2<u32>(4294967295u, global2.x))) << (~vec2<u32>(global2.x, 4294967295u) % vec2<u32>(32u)));
    let var_1 = ~vec2<u32>(15098u, 1u);
    return _wgslsmith_mult_vec2_u32(~var_0, vec2<u32>(4294967295u, u_input.b));
}

fn func_3(arg_0: f32) -> u32 {
    global2 = vec2<u32>(21324u, select(30794u, u_input.b, !global3.x));
    var var_0 = any(!select(vec3<bool>(global0.x, all(global3.xyy), true), vec3<bool>(false, u_input.a == u_input.a, !global3.x), global1.x));
    let var_1 = !global1.x;
    var_0 = true;
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(global2.x, 1u, 11243u), select(vec3<u32>(u_input.b, global2.x, u_input.b), vec3<u32>(15854u, global2.x, 49549u), vec3<bool>(true, true, true)), ~vec3<u32>(1u, u_input.b, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(24729u, global2.x, 9696u), vec3<u32>(4294967295u, global2.x, 30414u)) & _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, global2.x, 3493u), vec3<u32>(119363u, 1u, global2.x), vec3<u32>(39043u, 4294967295u, 1u))), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a, 1i), -57060i, -1i) >> (4800u % 32u), -430i, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -778f), _wgslsmith_f_op_f32(arg_0 - -1559f), 1f))), ~(~_wgslsmith_sub_i32(u_input.a, -1i))), Struct_1(vec3<u32>(u_input.b, countOneBits(41951u), global2.x), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, u_input.a) & vec2<i32>(-1i, u_input.a), ~vec2<i32>(-280i, -20117i)), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a, -1i, -48859i)), vec3<i32>(firstTrailingBit(-5455i), u_input.a ^ -49391i, 0i)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, arg_0, 1595f))), u_input.a & _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)), -vec4<i32>(0i, -2147483647i, u_input.a, 0i))));
    return _wgslsmith_clamp_u32(countOneBits(~89956u), ~_wgslsmith_clamp_u32(func_2(_wgslsmith_f_op_f32(-var_2.b.d.x), -1i).x, _wgslsmith_sub_u32(var_2.b.a.x, _wgslsmith_add_u32(u_input.b, 5293u)), countOneBits(var_2.b.a.x)), ~reverseBits(~(~var_2.b.a.x)));
}

fn func_1() -> bool {
    global2 = firstLeadingBit(min(~_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(15509u, 4294967295u), vec2<u32>(global2.x, u_input.b)), select(vec2<u32>(1u, 17979u), vec2<u32>(global2.x, global2.x), vec2<bool>(false, global3.x)), ~vec2<u32>(global2.x, global2.x)), func_2(_wgslsmith_f_op_f32(-374f * _wgslsmith_f_op_f32(round(-254f))), -9895i)));
    var var_0 = abs(vec2<u32>(u_input.b, ~19754u & ~global2.x) | vec2<u32>(func_3(_wgslsmith_f_op_f32(-906f * -1988f)), global2.x));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec3<bool>(~_wgslsmith_add_u32(global2.x, 4294967295u) > 0u, any(vec4<bool>(func_1(), func_1(), false, true)), !(!any(vec4<bool>(global3.x, global1.x, global0.x, true))));
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -4841i, u_input.a), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), -vec2<i32>(50565i, 2147483647i)), 13675i), ~(-1i), i32(-1i) * -1i));
    global2 = _wgslsmith_div_vec2_u32(~_wgslsmith_add_vec2_u32(~(~vec2<u32>(55194u, u_input.b)), firstLeadingBit(vec2<u32>(global2.x, 4294967295u))), ~(_wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, u_input.b), countOneBits(vec2<u32>(1u, global2.x)), vec2<u32>(4294967295u, u_input.b)) << ((_wgslsmith_mult_vec2_u32(vec2<u32>(global2.x, 1u), vec2<u32>(u_input.b, 0u)) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(global2.x, 4294967295u), vec2<u32>(4294967295u, 84560u))) % vec2<u32>(32u))));
    var var_1 = select(!(!vec2<bool>(!global1.x, any(global0.zz))), global0.xy, !(!(!vec2<bool>(global3.x, global3.x))));
    var var_2 = min(4294967295u, 27073u);
    var var_3 = _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_dot_vec3_i32(~vec3<i32>(36444i, var_0.x, var_0.x), var_0)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(-26114i, 1i, u_input.a, var_0.x), vec4<i32>(var_0.x, 2147483647i, u_input.a, u_input.a))), vec4<i32>(-1i) * -vec4<i32>(u_input.a, 68743i, 17226i, 30446i))) | min(var_0.x, -1i);
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, -690f, 901f, -826f)))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(135f * -1072f), -1146f, _wgslsmith_f_op_f32(select(-1322f, -807f, var_1.x)), -491f) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2011f, 1161f, -695f, -677f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(276f, -185f, 104f, -648f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(379f, -998f, -292f, -202f)))))));
    let var_5 = vec4<f32>(162f, -1475f, _wgslsmith_f_op_f32(1954f * _wgslsmith_f_op_f32(abs(-282f))), 133f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0, var_0, ~var_0), reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.a, var_0.x), var_0))), u_input.b, ~vec3<u32>(1u, 98919u, reverseBits(u_input.b ^ 4294967295u)), max(vec4<u32>(global2.x, 4294967295u, u_input.b, ~u_input.b), reverseBits(min(vec4<u32>(16234u, u_input.b, u_input.b, 45191u), vec4<u32>(global2.x, 0u, 35997u, global2.x))) >> (~(~vec4<u32>(u_input.b, 1u, 0u, 0u)) % vec4<u32>(32u))), ~abs(~max(vec3<u32>(u_input.b, global2.x, global2.x), vec3<u32>(global2.x, 4294967295u, global2.x))));
}

