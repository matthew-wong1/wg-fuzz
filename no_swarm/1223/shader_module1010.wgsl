struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(30183u, 1u, 4294967295u), vec3<u32>(25863u, 55455u, 1595u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(0u, 32977u, 41977u), vec3<u32>(6407u, 4294967295u, 0u), vec3<u32>(17528u, 1u, 2050u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(17422u, 0u, 4294967295u), vec3<u32>(51595u, 25241u, 43372u), vec3<u32>(39575u, 77494u, 4336u), vec3<u32>(88192u, 1u, 18757u), vec3<u32>(48176u, 39037u, 0u), vec3<u32>(57606u, 0u, 5994u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(19492u, 1u, 4294967295u), vec3<u32>(0u, 1u, 43366u), vec3<u32>(31923u, 54987u, 1u), vec3<u32>(6373u, 1u, 1u), vec3<u32>(4294967295u, 62580u, 0u), vec3<u32>(38247u, 4294967295u, 34205u), vec3<u32>(35085u, 0u, 94491u), vec3<u32>(14271u, 1u, 4878u), vec3<u32>(57399u, 4294967295u, 0u), vec3<u32>(4294967295u, 1u, 109538u), vec3<u32>(0u, 84762u, 0u), vec3<u32>(1u, 1u, 91118u), vec3<u32>(17762u, 0u, 21652u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(2679u, 19126u, 0u));

var<private> global1: Struct_1 = Struct_1(vec2<u32>(0u, 63242u));

var<private> global2: array<bool, 10> = array<bool, 10>(true, false, true, true, false, false, false, false, true, false);

var<private> global3: array<f32, 32>;

var<private> global4: vec4<u32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: u32) -> bool {
    let var_0 = arg_0;
    var var_1 = 0u;
    var var_2 = firstTrailingBit(min(arg_1.x, -9565i));
    var var_3 = vec2<bool>(!global2[_wgslsmith_index_u32(global4.x, 10u)], false);
    var var_4 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global1.a, _wgslsmith_mult_vec2_u32(min(_wgslsmith_clamp_vec2_u32(vec2<u32>(79856u, 25114u), global1.a, global4.yw), vec2<u32>(u_input.b.x, 0u)), _wgslsmith_add_vec2_u32(~vec2<u32>(95862u, u_input.b.x), _wgslsmith_mod_vec2_u32(vec2<u32>(20866u, global4.x), vec2<u32>(24309u, 15438u))))), reverseBits(~_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(42970u, 29u)], global4.zwz)) ^ ~1u), 10u)];
    return select(global2[_wgslsmith_index_u32(4294967295u, 10u)], !any(select(vec3<bool>(var_3.x, global2[_wgslsmith_index_u32(26728u, 10u)], var_3.x), vec3<bool>(var_3.x, global2[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(124000u, 10u)]), var_3.x)) || var_3.x, false);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global3 = array<f32, 32>();
    global2 = array<bool, 10>();
    let var_0 = select(vec2<bool>(global2[_wgslsmith_index_u32(4117u, 10u)], all(vec2<bool>(global2[_wgslsmith_index_u32(arg_0.x, 10u)], func_3(Struct_1(vec2<u32>(global4.x, arg_0.x)), vec4<i32>(32353i, u_input.a.x, 0i, u_input.d), Struct_2(u_input.e, vec2<i32>(-1i, -43006i)), 1u)))), select(!(!vec2<bool>(global2[_wgslsmith_index_u32(arg_0.x, 10u)], global2[_wgslsmith_index_u32(global4.x, 10u)])), select(!vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 10u)], false), !select(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(global1.a.x, 10u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(13513u, 10u)]), vec2<bool>(global2[_wgslsmith_index_u32(62837u, 10u)], false)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.x & 30717u, 0u | u_input.b.x), 10u)]), global2[_wgslsmith_index_u32(4294967295u, 10u)]), global2[_wgslsmith_index_u32(global4.x, 10u)]);
    var var_1 = Struct_2(44774i, select(-u_input.a.yx, vec2<i32>(u_input.d, -1i) << (countOneBits(~vec2<u32>(10558u, 74153u)) % vec2<u32>(32u)), false));
    global2 = array<bool, 10>();
    return Struct_1(vec2<u32>(34393u, 77563u));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1) -> u32 {
    var var_0 = true;
    global1 = Struct_1(~_wgslsmith_add_vec2_u32(countOneBits(abs(vec2<u32>(41598u, global4.x))), arg_2.a));
    global1 = arg_2;
    let var_1 = func_2(select(vec3<u32>(global1.a.x, ~min(arg_2.a.x, arg_2.a.x), _wgslsmith_dot_vec4_u32(u_input.b & vec4<u32>(20276u, 0u, global1.a.x, arg_2.a.x), u_input.b)), u_input.b.xzw, !any(vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)])) == !(!global2[_wgslsmith_index_u32(arg_2.a.x, 10u)])));
    let var_2 = u_input.b.yww;
    return arg_2.a.x;
}

fn func_1() -> i32 {
    var var_0 = min(4382u, ~(~abs(22072u))) | global4.x;
    var var_1 = Struct_2(24591i, ~((vec2<i32>(-2147483647i, 23819i) & vec2<i32>(-26750i, u_input.e)) >> (~(~vec2<u32>(47025u, 3929u)) % vec2<u32>(32u))));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(73922u, ~func_4(vec2<f32>(472f, _wgslsmith_f_op_f32(-594f - 1106f)), ~_wgslsmith_div_i32(25899i, 11592i), func_2(~vec3<u32>(32351u, 4294967295u, global1.a.x)))), 10u)];
    let var_3 = (1u << (_wgslsmith_dot_vec2_u32(func_2(u_input.b.xwx).a, ~u_input.b.zw) % 32u)) >> (1u % 32u);
    global4 = _wgslsmith_div_vec4_u32(vec4<u32>(41389u, ~8188u, reverseBits(_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, 0u), _wgslsmith_dot_vec3_u32(global4.yxy, u_input.b.xyz))), countOneBits(~(~4294967295u))), abs(~vec4<u32>(_wgslsmith_mult_u32(global1.a.x, 87837u), countOneBits(4294967295u), var_3 ^ 10076u, 49452u << (1u % 32u))));
    return u_input.d;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> u32 {
    let var_0 = max(u_input.d, ~(-arg_1.b.x));
    global0 = array<vec3<u32>, 29>();
    var var_1 = select(select(select(!select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 10u)], global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)]), vec4<bool>(global2[_wgslsmith_index_u32(4952u, 10u)], global2[_wgslsmith_index_u32(arg_0.a.x, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)], false), vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 10u)], true, global2[_wgslsmith_index_u32(u_input.b.x, 10u)])), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 10u)], global2[_wgslsmith_index_u32(20158u, 10u)], global2[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(1u, 10u)]), !vec4<bool>(global2[_wgslsmith_index_u32(global1.a.x, 10u)], false, false, false), !global2[_wgslsmith_index_u32(u_input.b.x, 10u)]), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(28136u, u_input.b.x), 55836u, arg_0.a.x), 10u)]), !vec4<bool>(global2[_wgslsmith_index_u32(~arg_0.a.x, 10u)], any(vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(12932u, 10u)])), !global2[_wgslsmith_index_u32(global1.a.x, 10u)], !global2[_wgslsmith_index_u32(global4.x, 10u)]), u_input.a.x <= -1i), select(select(vec4<bool>(true, false, func_3(arg_0, vec4<i32>(86160i, -39644i, u_input.e, var_0), arg_1, global4.x), global2[_wgslsmith_index_u32(1u, 10u)] | true), select(!vec4<bool>(true, global2[_wgslsmith_index_u32(global4.x, 10u)], global2[_wgslsmith_index_u32(0u, 10u)], false), !vec4<bool>(true, true, global2[_wgslsmith_index_u32(global4.x, 10u)], global2[_wgslsmith_index_u32(global4.x, 10u)]), select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(arg_0.a.x, 10u)]), vec4<bool>(false, false, global2[_wgslsmith_index_u32(0u, 10u)], false), global2[_wgslsmith_index_u32(1u, 10u)])), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, global2[_wgslsmith_index_u32(global4.x, 10u)], false), global2[_wgslsmith_index_u32(1u, 10u)]), vec4<bool>(global2[_wgslsmith_index_u32(global1.a.x, 10u)], true, true, false), all(vec4<bool>(global2[_wgslsmith_index_u32(1u, 10u)], false, global2[_wgslsmith_index_u32(global1.a.x, 10u)], global2[_wgslsmith_index_u32(u_input.b.x, 10u)])))), vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(u_input.b.x, 29u)] | vec3<u32>(26405u, global1.a.x, 1u), ~global0[_wgslsmith_index_u32(u_input.b.x, 29u)]), 10u)], !any(vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(global1.a.x, 10u)])), global2[_wgslsmith_index_u32(u_input.b.x, 10u)] && all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 10u)], global2[_wgslsmith_index_u32(40159u, 10u)], global2[_wgslsmith_index_u32(u_input.b.x, 10u)])), false), arg_2 != arg_2), select(vec4<bool>(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, u_input.b.x), 10u)], global2[_wgslsmith_index_u32(global4.x | 4294967295u, 10u)], true, true), vec4<bool>(false, true, arg_1.b.x == ~var_0, false), vec4<bool>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(35951u, 32u)]) <= 354f, false, -1229f >= _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 32u)]), global2[_wgslsmith_index_u32(arg_0.a.x, 10u)] && true)));
    let var_2 = !(any(select(vec3<bool>(global2[_wgslsmith_index_u32(35882u, 10u)], true, false), var_1.zyy, !var_1.xww)) == (false && (arg_2 < -437f)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(233f, arg_2) - vec2<f32>(-351f, 1159f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, 2701f)))))) + vec2<f32>(1213f, _wgslsmith_f_op_f32(abs(arg_2)))));
    return global4.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u >> (1u % 32u);
    global4 = _wgslsmith_mod_vec4_u32(~vec4<u32>(max(1u, 66837u) | _wgslsmith_mod_u32(4294967295u, global1.a.x), global4.x, 37203u, ~select(global4.x, 10897u, true)), vec4<u32>(global4.x, ~1u | ~global1.a.x, ~(~global4.x), 16107u));
    let var_1 = -(~(-u_input.e >> (4294967295u % 32u))) | max(16939i, _wgslsmith_add_i32(7374i, 0i));
    var var_2 = func_5(Struct_1(firstLeadingBit(vec2<u32>(reverseBits(16570u), 39981u))), Struct_2(~_wgslsmith_dot_vec4_i32(~vec4<i32>(-47006i, 28170i, u_input.a.x, u_input.d), vec4<i32>(var_1, 1i, var_1, 1i)), vec2<i32>(_wgslsmith_add_i32(~(-29902i), _wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(var_1, var_1))), func_1())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global1.a.x, 32u)]) - global3[_wgslsmith_index_u32(global4.x | _wgslsmith_dot_vec4_u32(~u_input.b, u_input.b ^ u_input.b), 32u)]));
    global0 = array<vec3<u32>, 29>();
    global0 = array<vec3<u32>, 29>();
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.b.x, global1.a.x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(7517u, 46649u), 49407u)) ^ global4.x, 32u)];
    let var_4 = Struct_2(reverseBits(u_input.c), u_input.a.zx >> (reverseBits(vec2<u32>(36703u, select(1u, 12943u, true))) % vec2<u32>(32u)));
    var var_5 = Struct_1(vec2<u32>(_wgslsmith_mod_u32(30830u, ~12473u) & _wgslsmith_clamp_u32(abs(1u), 34619u, ~global4.x), ~57300u));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.x, _wgslsmith_sub_u32(7641u, global4.x), firstTrailingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(global1.a.x, u_input.b.x, global1.a.x), global4.yxy) & ((vec3<u32>(global1.a.x, 4294967295u, global1.a.x) >> (vec3<u32>(global1.a.x, 1u, 20014u) % vec3<u32>(32u))) ^ _wgslsmith_mult_vec3_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], u_input.b.xww))), _wgslsmith_sub_i32(1i, _wgslsmith_clamp_i32(-var_4.b.x, -2533i, u_input.d << (119724u % 32u)) & -1i));
}

