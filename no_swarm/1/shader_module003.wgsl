struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(17786i, 35393i);

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, false)));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    global1 = array<Struct_1, 16>();
    global0 = vec2<i32>(global0.x & _wgslsmith_clamp_i32(-27053i, _wgslsmith_mod_i32(global0.x, ~(-14321i)), _wgslsmith_mult_i32(1311i, global0.x ^ global0.x)), min(global0.x, 0i));
    global0 = vec2<i32>(~(-_wgslsmith_mod_i32(firstTrailingBit(0i), reverseBits(1i))), _wgslsmith_sub_i32(select(global0.x, _wgslsmith_mod_i32(global0.x, 1i), true), global0.x) ^ global0.x);
    var var_0 = Struct_2(1i);
    var_0 = Struct_2(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(global0.x, -29379i), global0.x, 1i), firstTrailingBit(0i), abs(1i)), ~(-23484i >> (u_input.a % 32u)) ^ ~global0.x));
    return _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, 4294967295u, 1u), ~abs(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a))), ~vec4<u32>(~u_input.a, 10026u, ~u_input.a, 15792u)), ~(~(~vec4<u32>(u_input.a, 6954u, u_input.a, 0u))) >> (vec4<u32>(~_wgslsmith_add_u32(u_input.a, u_input.a), select(u_input.a, firstTrailingBit(u_input.a), true), 807u, _wgslsmith_mult_u32(abs(u_input.a), 0u)) % vec4<u32>(32u)));
}

fn func_2() -> u32 {
    global0 = _wgslsmith_sub_vec2_i32(min(vec2<i32>(11742i, global0.x), vec2<i32>(~global0.x, select(global0.x, global0.x, false))) << (vec2<u32>(13991u, ~func_3()) % vec2<u32>(32u)), -(~vec2<i32>(-2080i, global0.x)) & -(~_wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, -1i), vec2<i32>(1394i, -40536i))));
    global1 = array<Struct_1, 16>();
    var var_0 = u_input.a << (_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, 66715u), ~(~76325u) << (countOneBits(u_input.a ^ u_input.a) % 32u)) % 32u);
    let var_1 = firstLeadingBit(u_input.a);
    let var_2 = abs(select((select(vec3<i32>(global0.x, 0i, -34906i), vec3<i32>(6892i, global0.x, 21887i), false) << (abs(vec3<u32>(var_1, 4294967295u, u_input.a)) % vec3<u32>(32u))) | _wgslsmith_mult_vec3_i32(vec3<i32>(6634i, 61412i, global0.x), vec3<i32>(global0.x, -15988i, -1i)), -vec3<i32>(global0.x, 2147483647i, 75848i) | (select(vec3<i32>(1i, global0.x, global0.x), vec3<i32>(1i, -2147483647i, 13312i), vec3<bool>(false, false, true)) >> (vec3<u32>(var_1, 4294967295u, u_input.a) % vec3<u32>(32u))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), all(vec4<bool>(true, true, true, true)))));
    return ~var_1;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>) -> vec3<i32> {
    var var_0 = vec4<u32>(max(func_2() | 0u, 4294967295u), func_3(), select(firstTrailingBit(1u), u_input.a, true), countOneBits(~74096u));
    let var_1 = Struct_1(vec3<bool>(arg_1.x, arg_1.x, min(arg_0.a, 0i ^ global0.x) > -8089i));
    let var_2 = ~vec4<u32>(func_3(), ~(~var_0.x) >> (((u_input.a ^ u_input.a) | (528u ^ var_0.x)) % 32u), var_0.x, 10894u);
    var var_3 = true;
    var var_4 = Struct_4(vec2<u32>(abs(~var_2.x) | firstTrailingBit(func_2()), 4294967295u), 454f, arg_0);
    return _wgslsmith_sub_vec3_i32(vec3<i32>(var_4.c.a, var_4.c.a, _wgslsmith_div_i32(15481i, ~firstTrailingBit(global0.x))), firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.a, 27797i, arg_0.a), ~vec3<i32>(0i, arg_0.a, -7539i)) >> (var_2.yxx % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(func_1(Struct_2(_wgslsmith_div_i32(~global0.x, -4055i)), !vec4<bool>(any(vec2<bool>(false, false)), true, all(vec2<bool>(false, true)), true)), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-36402i, ~1i), _wgslsmith_mod_i32(-global0.x, abs(global0.x))), -1i, ~(~(~global0.x))));
    var_0 = vec3<i32>(global0.x, var_0.x, -_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-1i, global0.x, var_0.x, 2147483647i)), select(~vec4<i32>(-1i, global0.x, 15166i, global0.x), ~vec4<i32>(global0.x, 27514i, global0.x, var_0.x), any(vec2<bool>(true, true)))));
    global1 = array<Struct_1, 16>();
    let var_1 = !select(select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), select(true, false, true)), select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), true)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), false), true);
    let var_2 = Struct_4(_wgslsmith_sub_vec2_u32(~(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(1u, u_input.a)) << (select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(20829u, u_input.a), vec2<bool>(false, var_1.x)) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(min(vec2<u32>(4294967295u, 6511u), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.a, 51236u))), ~vec2<u32>(u_input.a, u_input.a) & abs(vec2<u32>(4703u, 0u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-473f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-352f, 845f)))), Struct_2(-11959i));
    var var_3 = -_wgslsmith_mult_vec4_i32(select(vec4<i32>(_wgslsmith_clamp_i32(var_2.c.a, global0.x, var_2.c.a), firstTrailingBit(1i), _wgslsmith_mod_i32(var_0.x, -2147483647i), _wgslsmith_div_i32(var_0.x, var_0.x)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-36i, -49199i, -28806i, 0i), vec4<i32>(-2147483647i, global0.x, global0.x, var_0.x), vec4<i32>(var_0.x, var_0.x, var_0.x, 1i)), select(!vec4<bool>(var_1.x, false, false, false), select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, false, false), vec4<bool>(var_1.x, true, var_1.x, var_1.x)), false && var_1.x)), ~abs(-vec4<i32>(global0.x, -1i, 2147483647i, 6295i)));
    var_3 = _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(2147483647i, -var_2.c.a, -4338i, select(var_0.x, -49964i, var_1.x)), ~(vec4<i32>(var_0.x, 0i, var_0.x, -2147483647i) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, var_2.a.x, u_input.a, 1u), vec4<u32>(u_input.a, var_2.a.x, var_2.a.x, var_2.a.x)) % vec4<u32>(32u)))), vec4<i32>(-1i) * -(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, 0i, 36393i, 2147483647i), vec4<i32>(var_0.x, var_0.x, var_2.c.a, var_2.c.a)) ^ countOneBits(vec4<i32>(2147483647i, 29582i, global0.x, var_0.x))));
    let var_4 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(func_2(), ~4294967295u, u_input.a, ~1u), _wgslsmith_mod_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(54110u, u_input.a, u_input.a, 16208u), vec4<u32>(18930u, var_2.a.x, var_2.a.x, var_2.a.x))), ~vec4<u32>(var_2.a.x, 0u, var_2.a.x, 60474u))), 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_vec2_i32(max(vec2<i32>(10889i, global0.x), ~vec2<i32>(-1i, var_0.x)), vec2<i32>(global0.x, -2147483647i)), firstTrailingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(38597u, 30196u, u_input.a), select(~vec3<u32>(4294967295u, 46979u, 11912u), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_2.a.x, 1u), vec3<u32>(var_2.a.x, 4294967295u, 5467u)), !var_1.x))));
}

