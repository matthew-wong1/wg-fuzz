struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(54342u, 61489u, 4294967295u, 13968u), 16201u);

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<u32>(148u, 4294967295u, 1664u, 42621u), 1u), Struct_1(vec4<u32>(5706u, 4294967295u, 4294967295u, 6272u), 4294967295u), Struct_1(vec4<u32>(13017u, 21332u, 4294967295u, 1u), 1u), Struct_1(vec4<u32>(64898u, 3250u, 35951u, 58031u), 16930u), Struct_1(vec4<u32>(1u, 0u, 59126u, 6547u), 10857u), Struct_1(vec4<u32>(4347u, 0u, 0u, 1u), 0u));

var<private> global2: vec4<i32> = vec4<i32>(i32(-2147483648), -1i, 2147483647i, 0i);

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<u32>(0u, 32088u, 5887u, 30394u), 3599u), Struct_1(vec4<u32>(0u, 1u, 20539u, 4294967295u), 39029u), Struct_1(vec4<u32>(17080u, 4294967295u, 1u, 9616u), 64621u), Struct_1(vec4<u32>(81453u, 1u, 56220u, 91167u), 79341u), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 61371u), 64081u), Struct_1(vec4<u32>(32626u, 0u, 10985u, 4294967295u), 1u), Struct_1(vec4<u32>(24562u, 15481u, 1u, 1u), 0u), Struct_1(vec4<u32>(23207u, 120287u, 4294967295u, 92110u), 0u), Struct_1(vec4<u32>(22306u, 0u, 7972u, 26776u), 1u), Struct_1(vec4<u32>(94295u, 4294967295u, 0u, 0u), 4294967295u), Struct_1(vec4<u32>(1u, 31831u, 0u, 1u), 11562u), Struct_1(vec4<u32>(36171u, 9381u, 10294u, 10134u), 1u), Struct_1(vec4<u32>(49433u, 4294967295u, 42892u, 19816u), 4294967295u), Struct_1(vec4<u32>(4294967295u, 18858u, 19799u, 4294967295u), 1u), Struct_1(vec4<u32>(71u, 23438u, 0u, 0u), 1u), Struct_1(vec4<u32>(0u, 15499u, 1u, 1u), 105307u), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 0u), 2280u), Struct_1(vec4<u32>(0u, 49611u, 90465u, 4294967295u), 0u), Struct_1(vec4<u32>(9697u, 0u, 1u, 0u), 1u), Struct_1(vec4<u32>(51163u, 1u, 1u, 27867u), 0u), Struct_1(vec4<u32>(4294967295u, 34875u, 55938u, 4294967295u), 0u), Struct_1(vec4<u32>(4294967295u, 19932u, 4294967295u, 1u), 4294967295u), Struct_1(vec4<u32>(32382u, 57585u, 35486u, 42769u), 4294967295u), Struct_1(vec4<u32>(0u, 0u, 28015u, 4294967295u), 1u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> f32 {
    global4 = array<Struct_1, 24>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, -248f)), _wgslsmith_f_op_f32(-226f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-1456f - 1419f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-921f))))), -1145f);
    var var_1 = select(vec2<bool>(true, true), !vec2<bool>(all(vec3<bool>(true, true, true)), select(true, any(vec2<bool>(true, false)), any(vec2<bool>(false, true)))), select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, true, true)), any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)))), vec2<bool>(!(u_input.b >= global3.b), true)));
    global4 = array<Struct_1, 24>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(2823f, arg_0.x)), _wgslsmith_f_op_f32(592f + arg_0.x))) * _wgslsmith_f_op_f32(-arg_0.x)));
    return -263f;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<u32>) -> i32 {
    global4 = array<Struct_1, 24>();
    var var_0 = Struct_1(min(u_input.d, ~_wgslsmith_clamp_vec4_u32(~u_input.d, firstLeadingBit(global0.a), firstTrailingBit(vec4<u32>(arg_1.x, global0.b, 21599u, 0u)))), 4294967295u);
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~(arg_1.x >> (~global3.b % 32u)) & ~30405u), 6u)];
    var var_1 = Struct_1(vec4<u32>(firstLeadingBit(4294967295u) >> (arg_1.x % 32u), var_0.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(85965u, global0.b, 1u)), vec3<u32>(global3.a.x, var_0.b, arg_1.x) >> (vec3<u32>(10908u, 1u, 4294967295u) % vec3<u32>(32u))), global3.a.zzw), u_input.b), 10260u << (_wgslsmith_dot_vec2_u32(~(u_input.d.zx | vec2<u32>(arg_1.x, var_0.a.x)), min(var_0.a.wx, vec2<u32>(global3.a.x, u_input.b)) >> (_wgslsmith_add_vec2_u32(global0.a.xz, vec2<u32>(var_0.a.x, 28763u)) % vec2<u32>(32u))) % 32u));
    var_0 = global1[_wgslsmith_index_u32(global3.a.x, 6u)];
    return ~u_input.c.x;
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_1, 6>();
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-796f, 2401f, 1797f, 170f)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-848f)) * _wgslsmith_div_f32(1000f, -1431f)), _wgslsmith_f_op_f32(func_3(vec3<f32>(-651f, -1087f, 1155f), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, 0u), 24u)])), 1653f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-560f, 553f))))), _wgslsmith_sub_vec2_u32(firstTrailingBit(_wgslsmith_mult_vec2_u32(~vec2<u32>(global0.b, 19041u), vec2<u32>(0u, u_input.b))), global3.a.wz));
    let var_1 = all(vec2<bool>(false, !any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))));
    var var_2 = Struct_1(vec4<u32>(global0.a.x, 0u, 0u, global3.a.x), _wgslsmith_dot_vec4_u32(global0.a, _wgslsmith_clamp_vec4_u32(global0.a, ~(~vec4<u32>(1u, 4294967295u, u_input.a, u_input.a)), u_input.d)));
    let var_3 = Struct_1(global3.a & ~vec4<u32>(global0.a.x >> (global0.b % 32u), ~global3.a.x, u_input.a, firstTrailingBit(var_2.b)), abs(max(~u_input.d.x, u_input.d.x << (_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(1u, 4294967295u, var_2.b, 0u)) % 32u))));
    return global4[_wgslsmith_index_u32(abs(var_2.a.x >> (0u % 32u)), 24u)];
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(105f - 590f))) < _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-538f, _wgslsmith_f_op_f32(1000f * -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -817f)), _wgslsmith_f_op_f32(step(-585f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(608f * -1000f)))));
    let var_2 = func_2();
    var var_3 = global0.a.wwz;
    var var_4 = all(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), false)), !all(vec4<bool>(false, true, false, false))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), false)), false));
    return vec4<u32>(20910u, _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_div_vec3_u32(var_2.a.wyw, vec3<u32>(global0.b, var_3.x, 0u))), vec3<u32>(~19587u, _wgslsmith_div_u32(0u, arg_0.a.x), global0.b) >> (vec3<u32>(max(1u, var_2.a.x), ~511u, ~0u) % vec3<u32>(32u))), ~u_input.d.x, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(max(150f, -1000f))) - 327f), 193f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(381f, -162f))) * vec2<f32>(_wgslsmith_f_op_f32(-882f + -1000f), _wgslsmith_div_f32(761f, -1234f)))));
    let var_1 = _wgslsmith_add_vec2_i32(firstTrailingBit(-min(vec2<i32>(global2.x, u_input.c.x), vec2<i32>(global2.x, u_input.c.x)) & global2.zw), global2.yz);
    var var_2 = Struct_1(~(~func_1(global1[_wgslsmith_index_u32(~7993u, 6u)], _wgslsmith_mod_i32(-2147483647i, u_input.c.x), global4[_wgslsmith_index_u32(u_input.b, 24u)])), ~42458u);
    var var_3 = !(!vec2<bool>(true, !any(vec4<bool>(true, true, true, false))));
    let var_4 = select(countOneBits(_wgslsmith_add_vec3_i32(global2.xxx, vec3<i32>(min(-14182i, 54515i), var_1.x, 4336i))), u_input.c.xxz, !vec3<bool>(select(all(vec3<bool>(true, var_3.x, true)), var_3.x, !var_3.x), true, var_3.x));
    global0 = global1[_wgslsmith_index_u32(~global0.a.x, 6u)];
    let var_5 = 1u;
    var var_6 = (u_input.c.xw << (~(vec2<u32>(var_5, var_2.b) & ~u_input.d.yw) % vec2<u32>(32u))) << (vec2<u32>(4417u, 4294967295u) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c | u_input.c, ~var_2.a.xw);
}

