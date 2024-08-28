struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_4,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 4488i);

var<private> global1: u32;

var<private> global2: vec4<i32> = vec4<i32>(-45017i, 26107i, 27246i, -11420i);

var<private> global3: array<f32, 26>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(u_input.c, 26u)])) * _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(abs(max(45101u, ~15930u)), 26u)])));
    global3 = array<f32, 26>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-277f, global3[_wgslsmith_index_u32(~(~u_input.c), 26u)]))));
    global0 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(-u_input.b, -vec4<i32>(-4675i, u_input.b.x, 2147483647i, global0.x)) >> (max(~vec4<u32>(15332u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, 0u, u_input.c, 42553u) ^ select(vec4<u32>(4294967295u, u_input.c, u_input.c, 68707u), vec4<u32>(14550u, 4294967295u, u_input.c, u_input.c), false)) % vec4<u32>(32u)), u_input.b);
    var var_2 = ~_wgslsmith_dot_vec4_u32(abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c, 649u, 30983u, 4294967295u), abs(vec4<u32>(u_input.c, u_input.c, 4294967295u, 75444u)))), vec4<u32>(u_input.c, _wgslsmith_mult_u32(reverseBits(u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(36548u, u_input.c, 33553u, u_input.c), vec4<u32>(31976u, u_input.c, 125554u, 1u))), ~u_input.c | 7540u, u_input.c));
    return _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(max(u_input.c, ~u_input.c), u_input.c)), vec2<u32>(1u, countOneBits(0u)));
}

fn func_2(arg_0: i32) -> Struct_4 {
    var var_0 = func_3();
    var var_1 = Struct_4(Struct_3(-(~(-global0.x)), Struct_2(0u, -17880i, firstLeadingBit(~vec2<u32>(0u, var_0.x)))));
    let var_2 = Struct_4(var_1.a);
    global1 = u_input.c >> (u_input.c % 32u);
    let var_3 = var_2.a.b;
    return var_2;
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_2) -> vec4<u32> {
    global1 = arg_1.a.b.c.x;
    global3 = array<f32, 26>();
    global3 = array<f32, 26>();
    let var_0 = func_2(1i).a.a;
    global2 = select(u_input.b, vec4<i32>(global2.x, global2.x, -2147483647i, u_input.a), !select(vec4<bool>(arg_3.b >= arg_2.a.b.b, false, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), false), any(vec3<bool>(false, false, true))), vec4<bool>(true, true, true, all(vec2<bool>(true, true)))));
    return vec4<u32>(u_input.c, countOneBits(countOneBits(firstLeadingBit(u_input.c))), ~(~_wgslsmith_mult_u32(4294967295u << (arg_2.a.b.a % 32u), ~4294967295u)), 1u >> (~arg_2.a.b.c.x % 32u));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_5) -> Struct_2 {
    global1 = ~0u;
    return func_2(-_wgslsmith_add_i32(~global0.x, _wgslsmith_div_i32(~global2.x, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b)))).a.b;
}

fn func_6(arg_0: vec4<bool>, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 136845u, arg_3.c.x), vec3<u32>(31313u, u_input.c, 1181u)), vec3<u32>(arg_3.a, arg_3.c.x, u_input.c) >> (vec3<u32>(4294967295u, 4294967295u, u_input.c) % vec3<u32>(32u))), abs(4294967295u), arg_3.c.x, ~u_input.c), ~(~firstTrailingBit(vec4<u32>(arg_3.a, u_input.c, 4294967295u, 4294967295u) | vec4<u32>(u_input.c, 88772u, u_input.c, u_input.c))));
    let var_1 = 0u;
    var var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, _wgslsmith_clamp_u32(~(var_0.x ^ 1u), 30633u, 13400u), 0u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(arg_3.c, vec2<u32>(u_input.c, arg_3.c.x)) | _wgslsmith_clamp_u32(4294967295u, 78822u, var_0.x), 11325u)), vec4<u32>(1u, ~0u, ~firstTrailingBit(1u) | ~(31419u >> (var_1 % 32u)), _wgslsmith_sub_u32(~var_1, firstLeadingBit(min(31035u, 15707u)))));
    let var_3 = Struct_5(func_2(global0.x).a.b, arg_0, func_2(-1i), ~(abs(49818u) << (~_wgslsmith_div_u32(4294967295u, arg_3.a) % 32u)));
    var var_4 = !(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), min(max(vec3<u32>(var_0.x, 1u, 1u), var_0.zww), reverseBits(var_0.xxx))), 26u)] > _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(888f * 551f), -151f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_1, 26u)] * -1216f) + arg_1)));
    return ~(-14306i) << (_wgslsmith_div_u32(var_2.x, _wgslsmith_add_u32(func_5(~vec4<u32>(var_3.c.a.b.a, 47019u, 41664u, 4294967295u), var_3).c.x, 38301u)) % 32u);
}

fn func_1() -> vec4<bool> {
    let var_0 = min(u_input.b.x, countOneBits(_wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_sub_i32(~u_input.d.x, _wgslsmith_sub_i32(1i, u_input.a)), ~global2.x)));
    let var_1 = abs(reverseBits(vec2<i32>(1i, u_input.d.x)));
    let var_2 = ~func_6(vec4<bool>(true, true, all(vec3<bool>(true, false, true)) & true, false), _wgslsmith_f_op_f32(f32(-1f) * -393f), vec3<bool>(true, true, true), func_5(func_4(global3[_wgslsmith_index_u32(u_input.c ^ u_input.c, 26u)], Struct_4(Struct_3(-15197i, Struct_2(4294967295u, global0.x, vec2<u32>(6938u, 8819u)))), func_2(global2.x), func_2(-2147483647i).a.b), Struct_5(Struct_2(0u, global2.x, vec2<u32>(u_input.c, 45168u)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), false), Struct_4(Struct_3(global2.x, Struct_2(20879u, u_input.d.x, vec2<u32>(u_input.c, u_input.c)))), _wgslsmith_sub_u32(u_input.c, 13352u))));
    let var_3 = _wgslsmith_f_op_f32(-1f);
    let var_4 = Struct_4(func_2(func_6(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-830f + 1599f))), vec3<bool>(false, true, true), func_5(vec4<u32>(15196u, 1u, u_input.c, 0u) >> (vec4<u32>(u_input.c, 0u, 1u, u_input.c) % vec4<u32>(32u)), Struct_5(Struct_2(4294967295u, var_2, vec2<u32>(u_input.c, u_input.c)), vec4<bool>(false, true, true, true), Struct_4(Struct_3(global0.x, Struct_2(u_input.c, -36464i, vec2<u32>(1u, 7963u)))), u_input.c)))).a);
    return select(select(vec4<bool>(all(vec3<bool>(true, true, true)), !select(true, true, true), any(vec4<bool>(false, false, false, true)), any(vec2<bool>(true, true)) | true), vec4<bool>(!any(vec2<bool>(true, false)), any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), true)), !any(vec3<bool>(true, false, true)), all(vec2<bool>(true, false))), true && all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)))), vec4<bool>(true, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true))), false, false), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(Struct_2(0u, ~global0.x, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, ~0u), (vec2<u32>(18483u, 0u) << (vec2<u32>(79514u, u_input.c) % vec2<u32>(32u))) | vec2<u32>(4294967295u, 6667u))), select(!select(vec4<bool>(true, true, true, true), func_1(), func_1()), select(vec4<bool>(1i >= u_input.a, func_1().x, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, all(vec2<bool>(false, false)), global3[_wgslsmith_index_u32(35914u, 26u)] < global3[_wgslsmith_index_u32(u_input.c, 26u)])), !all(vec4<bool>(true, true, true, true))), Struct_4(Struct_3(u_input.b.x, func_5(select(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(1u, u_input.c, u_input.c, u_input.c), vec4<bool>(false, true, false, true)), Struct_5(Struct_2(u_input.c, -2147483647i, vec2<u32>(u_input.c, 47341u)), vec4<bool>(true, true, false, false), Struct_4(Struct_3(-1i, Struct_2(43836u, 56085i, vec2<u32>(1u, u_input.c)))), u_input.c)))), 53705u);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~(~u_input.c), 26u)]), 171f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-338f - _wgslsmith_f_op_f32(trunc(-619f))))), -2147483647i, u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-997f, global3[_wgslsmith_index_u32(1u, 26u)], global3[_wgslsmith_index_u32(0u, 26u)]), vec3<f32>(-690f, 126f, var_1.x), var_0.b.yyz)))))));
}

