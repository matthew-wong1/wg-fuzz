struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: Struct_3,
    d: vec4<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(vec3<u32>(0u, 18292u, 61645u)), Struct_3(vec3<u32>(4944u, 4294967295u, 10079u)), Struct_3(vec3<u32>(0u, 44142u, 4294967295u)), Struct_3(vec3<u32>(4294967295u, 12669u, 1u)), Struct_3(vec3<u32>(0u, 1u, 0u)), Struct_3(vec3<u32>(65275u, 4294967295u, 1u)));

var<private> global1: array<vec3<u32>, 1>;

var<private> global2: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(vec3<u32>(24419u, 73964u, 8442u)), Struct_3(vec3<u32>(4294967295u, 0u, 26761u)), Struct_3(vec3<u32>(31969u, 33684u, 46608u)), Struct_3(vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_3(vec3<u32>(67013u, 15970u, 27143u)), Struct_3(vec3<u32>(0u, 0u, 1u)), Struct_3(vec3<u32>(31511u, 4294967295u, 8854u)), Struct_3(vec3<u32>(1u, 11696u, 4294967295u)), Struct_3(vec3<u32>(1u, 4294967295u, 30585u)), Struct_3(vec3<u32>(0u, 4294967295u, 1u)), Struct_3(vec3<u32>(1u, 118065u, 0u)), Struct_3(vec3<u32>(35569u, 0u, 11621u)), Struct_3(vec3<u32>(1u, 59277u, 24393u)), Struct_3(vec3<u32>(1u, 1u, 4294967295u)), Struct_3(vec3<u32>(65154u, 4294967295u, 17366u)), Struct_3(vec3<u32>(9280u, 1u, 0u)), Struct_3(vec3<u32>(4294967295u, 88538u, 17654u)), Struct_3(vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_3(vec3<u32>(1u, 0u, 6585u)), Struct_3(vec3<u32>(20439u, 76702u, 21772u)), Struct_3(vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_3(vec3<u32>(0u, 2705u, 4294967295u)), Struct_3(vec3<u32>(1u, 0u, 1u)), Struct_3(vec3<u32>(0u, 1u, 4302u)), Struct_3(vec3<u32>(21897u, 0u, 1u)), Struct_3(vec3<u32>(0u, 119071u, 4294967295u)), Struct_3(vec3<u32>(4294967295u, 0u, 29622u)), Struct_3(vec3<u32>(56005u, 14103u, 4437u)));

var<private> global3: array<vec3<f32>, 3>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: bool) -> u32 {
    var var_0 = -2147483647i;
    global0 = array<Struct_3, 6>();
    global1 = array<vec3<u32>, 1>();
    var var_1 = arg_1;
    var var_2 = Struct_3(_wgslsmith_sub_vec3_u32(global1[_wgslsmith_index_u32(29754u, 1u)], ~vec3<u32>(69791u, abs(35300u), ~54908u)));
    return var_2.a.x >> (var_2.a.x % 32u);
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> vec3<u32> {
    global2 = array<Struct_3, 28>();
    global1 = array<vec3<u32>, 1>();
    global0 = array<Struct_3, 6>();
    global2 = array<Struct_3, 28>();
    global0 = array<Struct_3, 6>();
    return ~(vec3<u32>(4564u, ~(arg_0.a.x ^ 38181u), _wgslsmith_sub_u32(13746u, 0u)) ^ ~vec3<u32>(1u, func_3(u_input.a, false), 44124u));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>) -> vec3<i32> {
    let var_0 = Struct_5(Struct_1(arg_0.b.a, -1i), arg_1.x, Struct_3(_wgslsmith_mod_vec3_u32(global1[_wgslsmith_index_u32(arg_1.x, 1u)], vec3<u32>(arg_1.x, arg_1.x, arg_1.x)) ^ _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(0u, arg_1.x, arg_1.x)), func_2(Struct_3(global1[_wgslsmith_index_u32(arg_1.x, 1u)]), -1i))), vec4<i32>(arg_0.d.x, -arg_0.a.x, arg_0.b.b >> (arg_1.x % 32u), 22540i), Struct_2(arg_0.a, arg_0.b, arg_0.c, vec2<i32>(-12225i, -86290i)));
    global1 = array<vec3<u32>, 1>();
    global2 = array<Struct_3, 28>();
    let var_1 = 2147483647i;
    global3 = array<vec3<f32>, 3>();
    return vec3<i32>(_wgslsmith_add_i32(-1i, i32(-1i) * -30290i), _wgslsmith_dot_vec3_i32(~abs(vec3<i32>(u_input.a.x, var_1, arg_0.b.b)), firstLeadingBit(vec3<i32>(_wgslsmith_clamp_i32(var_0.d.x, u_input.a.x, arg_0.d.x), _wgslsmith_sub_i32(2147483647i, u_input.a.x), ~var_1))), var_1);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: vec3<u32>) -> u32 {
    let var_0 = arg_2.a.c;
    let var_1 = !((func_3(-vec2<i32>(0i, u_input.a.x), true) <= arg_3.x) | true);
    let var_2 = 2147483647i;
    return ~0u;
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: Struct_5, arg_3: u32) -> Struct_3 {
    global0 = array<Struct_3, 6>();
    let var_0 = ~_wgslsmith_sub_u32(arg_1, min(48125u, func_2(global2[_wgslsmith_index_u32(4294967295u, 28u)], 77225i).x));
    global2 = array<Struct_3, 28>();
    let var_1 = arg_2.a;
    global3 = array<vec3<f32>, 3>();
    return global2[_wgslsmith_index_u32(countOneBits(4294967295u), 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(any(select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), false), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true), true), true)), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global3[_wgslsmith_index_u32(32712u, 3u)], vec3<f32>(-1390f, -751f, 1295f)))), abs(func_1(Struct_2(u_input.a, Struct_1(global3[_wgslsmith_index_u32(5303u, 3u)], 28810i), true, vec2<i32>(u_input.a.x, u_input.a.x)), vec2<u32>(4294967295u, 17720u))), Struct_4(Struct_2(vec2<i32>(u_input.a.x, -1i), Struct_1(global3[_wgslsmith_index_u32(1u, 3u)], u_input.a.x), true, vec2<i32>(u_input.a.x, u_input.a.x))), ~(~global1[_wgslsmith_index_u32(29217u, 1u)])) << (_wgslsmith_sub_u32(~func_2(global0[_wgslsmith_index_u32(79482u, 6u)], u_input.a.x).x, abs(8955u) | _wgslsmith_dot_vec3_u32(vec3<u32>(42996u, 16350u, 4294967295u), global1[_wgslsmith_index_u32(25926u, 1u)])) % 32u), Struct_5(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(1000f - -750f), _wgslsmith_div_f32(-1725f, 891f), 2543f), u_input.a.x), abs(1u) >> (_wgslsmith_sub_u32(~4294967295u, _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(1u, 1u)], vec3<u32>(62382u, 4294967295u, 22564u))) % 32u), Struct_3(vec3<u32>(~3639u, 19113u, 1u)), vec4<i32>(~u_input.a.x, abs(-41420i), _wgslsmith_div_i32(u_input.a.x, 0i), -2147483647i) & ~(-vec4<i32>(u_input.a.x, 42965i, u_input.a.x, u_input.a.x)), Struct_2(u_input.a, Struct_1(vec3<f32>(1282f, 823f, 1792f), func_1(Struct_2(u_input.a, Struct_1(global3[_wgslsmith_index_u32(0u, 3u)], u_input.a.x), false, u_input.a), vec2<u32>(65243u, 4294967295u)).x), false, _wgslsmith_mult_vec2_i32(u_input.a, u_input.a))), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(20920u, 18107u)) >> (~func_2(Struct_3(global1[_wgslsmith_index_u32(32399u, 1u)]), 1i).x % 32u)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(var_0.a.x, 3u)] - _wgslsmith_f_op_vec3_f32(-vec3<f32>(568f, -412f, 233f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(713f, 814f, 2397f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-461f, -849f, 819f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(261f, -1313f, 324f))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-556f, -1628f, -1207f), vec3<f32>(-1656f, 965f, 193f)))))), firstTrailingBit(u_input.a.x));
    global0 = array<Struct_3, 6>();
    var var_2 = 995f;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.zy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.yz) + vec2<f32>(275f, 1018f)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(-821f, -221f), _wgslsmith_f_op_f32(362f + var_1.a.x)), vec2<f32>(_wgslsmith_f_op_f32(trunc(var_1.a.x)), var_1.a.x))))));
    var var_4 = var_0;
    global0 = array<Struct_3, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, -abs(-2147483647i), 31563i), firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-3057i, 3226i, u_input.a.x) | vec3<i32>(u_input.a.x, var_1.b, var_1.b), vec3<i32>(8673i, 0i, u_input.a.x) | vec3<i32>(-1i, var_1.b, -2147483647i))), max(max(abs(vec3<i32>(u_input.a.x, u_input.a.x, var_1.b)), func_1(Struct_2(vec2<i32>(var_1.b, u_input.a.x), Struct_1(var_1.a, u_input.a.x), true, u_input.a), vec2<u32>(0u, var_4.a.x))), _wgslsmith_div_vec3_i32(vec3<i32>(24465i, 0i, var_1.b) ^ vec3<i32>(51477i, var_1.b, var_1.b), func_1(Struct_2(vec2<i32>(var_1.b, u_input.a.x), var_1, false, u_input.a), var_4.a.zz)))), var_3.x);
}

