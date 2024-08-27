struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(Struct_2(vec2<f32>(1769f, 109f), vec2<u32>(1u, 60259u), vec4<u32>(65143u, 49221u, 79319u, 1u), true), 1i, vec2<bool>(false, true)), Struct_3(Struct_2(vec2<f32>(318f, 753f), vec2<u32>(48368u, 0u), vec4<u32>(0u, 47193u, 0u, 4294967295u), true), 2147483647i, vec2<bool>(true, true)), Struct_3(Struct_2(vec2<f32>(-1089f, -1000f), vec2<u32>(0u, 0u), vec4<u32>(0u, 4294967295u, 4294967295u, 11999u), false), 0i, vec2<bool>(true, true)), Struct_3(Struct_2(vec2<f32>(254f, 1000f), vec2<u32>(1u, 0u), vec4<u32>(27812u, 1u, 4294967295u, 1u), false), 7270i, vec2<bool>(true, false)), Struct_3(Struct_2(vec2<f32>(909f, -462f), vec2<u32>(60645u, 4294967295u), vec4<u32>(4294967295u, 63914u, 20874u, 1u), true), i32(-2147483648), vec2<bool>(false, true)), Struct_3(Struct_2(vec2<f32>(1000f, -1701f), vec2<u32>(0u, 30931u), vec4<u32>(0u, 12741u, 33472u, 76137u), true), 2147483647i, vec2<bool>(false, false)), Struct_3(Struct_2(vec2<f32>(-667f, 1000f), vec2<u32>(49612u, 60299u), vec4<u32>(1u, 12807u, 4294967295u, 0u), true), -3339i, vec2<bool>(false, true)), Struct_3(Struct_2(vec2<f32>(525f, 1888f), vec2<u32>(67256u, 25747u), vec4<u32>(54275u, 0u, 0u, 5581u), true), 17005i, vec2<bool>(false, false)), Struct_3(Struct_2(vec2<f32>(386f, -1000f), vec2<u32>(92199u, 35621u), vec4<u32>(4294967295u, 0u, 4294967295u, 0u), false), -29053i, vec2<bool>(false, true)), Struct_3(Struct_2(vec2<f32>(1000f, 849f), vec2<u32>(1u, 20521u), vec4<u32>(0u, 4294967295u, 4294967295u, 43466u), true), 2147483647i, vec2<bool>(true, false)), Struct_3(Struct_2(vec2<f32>(502f, -110f), vec2<u32>(66179u, 34351u), vec4<u32>(1u, 1u, 23043u, 0u), true), -33482i, vec2<bool>(true, true)), Struct_3(Struct_2(vec2<f32>(-2023f, 1019f), vec2<u32>(0u, 1302u), vec4<u32>(0u, 4294967295u, 0u, 0u), false), -8583i, vec2<bool>(true, false)), Struct_3(Struct_2(vec2<f32>(-863f, -1000f), vec2<u32>(1u, 4294967295u), vec4<u32>(1u, 10033u, 4294967295u, 1u), true), 0i, vec2<bool>(true, true)), Struct_3(Struct_2(vec2<f32>(166f, 632f), vec2<u32>(10416u, 4294967295u), vec4<u32>(46202u, 1u, 21446u, 4294967295u), false), -66022i, vec2<bool>(true, true)), Struct_3(Struct_2(vec2<f32>(330f, 351f), vec2<u32>(19526u, 0u), vec4<u32>(4294967295u, 94074u, 2131u, 4294967295u), true), 0i, vec2<bool>(false, true)), Struct_3(Struct_2(vec2<f32>(629f, 2007f), vec2<u32>(1u, 40663u), vec4<u32>(61083u, 4294967295u, 122u, 32324u), true), 15385i, vec2<bool>(false, true)));

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 27>;

var<private> global3: array<Struct_3, 25>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec2<f32> {
    let var_0 = global2[_wgslsmith_index_u32(1u, 27u)];
    global0 = array<Struct_3, 16>();
    let var_1 = u_input.d.zyz | vec3<i32>(-_wgslsmith_add_i32(2147483647i, ~2147483647i), ~(-38661i), 14254i);
    let var_2 = arg_0.a.b;
    var var_3 = vec3<i32>(min(global1.b.x, var_0.b.x) >> (countOneBits(firstTrailingBit(4294967295u) | _wgslsmith_dot_vec3_u32(arg_0.a.c.ywx, arg_0.a.c.wxw)) % 32u), ~_wgslsmith_mult_i32(i32(-1i) * -17301i, u_input.a), firstLeadingBit(u_input.e));
    return global1.c;
}

fn func_2() -> vec4<bool> {
    var var_0 = global2[_wgslsmith_index_u32(u_input.c, 27u)];
    var_0 = Struct_1(vec4<f32>(global1.c.x, -322f, _wgslsmith_f_op_f32(min(global1.c.x, 345f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c.x)))), -(~vec3<i32>(1i, 1i, 1i)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(109f, var_0.c.x)) - _wgslsmith_f_op_f32(988f * -307f)) + _wgslsmith_f_op_f32(-global1.a.x)), global1.c.x), select(global1.d, vec4<bool>(!var_0.d.x, true, !any(vec2<bool>(global1.d.x, var_0.d.x)), !any(vec2<bool>(false, false))), false));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(508f * global1.a.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(1u, u_input.c) << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))), reverseBits(reverseBits(vec4<u32>(u_input.c, u_input.c, 0u, u_input.c))), !var_0.d.x), -79360i, vec2<bool>(all(vec3<bool>(global1.d.x, global1.d.x, true)), true))));
    var var_2 = vec2<bool>(true, all(select(!(!vec3<bool>(false, var_0.d.x, var_0.d.x)), global1.d.yww, global1.d.x)));
    return vec4<bool>(var_2.x, max(u_input.d.x, var_0.b.x >> (u_input.b % 32u)) != global1.b.x, true, true);
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> f32 {
    global2 = array<Struct_1, 27>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global1.a), vec4<f32>(237f, 1198f, arg_1, arg_0.a.x), global1.d))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, -748f, arg_1, 471f)) - global1.a)), countOneBits(countOneBits(-global1.b)), _wgslsmith_f_op_vec2_f32(arg_0.a - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + -1873f)), -748f)), func_2());
    var var_1 = _wgslsmith_clamp_vec4_i32((vec4<i32>(-1i) * -vec4<i32>(var_0.b.x, -2147483647i, 1i, 2147483647i)) << (~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(arg_0.c, vec4<u32>(u_input.b, 0u, 0u, u_input.b)), arg_0.c) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec2_i32(-(~u_input.d.zz), ~max(vec2<i32>(-1i, -39750i), u_input.d.zz)), -11634i, _wgslsmith_clamp_i32(abs(abs(u_input.d.x)), 1i, -32689i), firstLeadingBit(select(_wgslsmith_add_i32(global1.b.x, u_input.a), reverseBits(2147483647i), global1.d.x))), _wgslsmith_sub_vec4_i32(firstTrailingBit(u_input.d), ~(vec4<i32>(-555i, var_0.b.x, global1.b.x, -30191i) << (arg_0.c % vec4<u32>(32u)))));
    global2 = array<Struct_1, 27>();
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-377f, _wgslsmith_f_op_f32(f32(-1f) * -568f), _wgslsmith_f_op_f32(f32(-1f) * -1002f), arg_1))))), var_1.yzw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-865f * -367f)) + vec2<f32>(arg_1, _wgslsmith_f_op_f32(floor(var_0.a.x))))), select(var_0.d, vec4<bool>(_wgslsmith_f_op_f32(-global1.a.x) <= -1000f, true, true, any(vec3<bool>(var_0.d.x, true, var_0.d.x))), global1.d.x));
    return 704f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~(~(~(u_input.b << (0u % 32u)))), _wgslsmith_dot_vec2_u32(~vec2<u32>(21213u, u_input.c), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 106420u, 0u, u_input.b), vec4<u32>(u_input.c, u_input.c, 1u, u_input.c)), u_input.b | 1u), abs(select(vec2<u32>(0u, 1559u), vec2<u32>(u_input.c, u_input.b), false)))), ~(~_wgslsmith_add_u32(u_input.b, 12167u)));
    var var_1 = global2[_wgslsmith_index_u32(~u_input.c, 27u)];
    var var_2 = _wgslsmith_mod_u32(max(max(_wgslsmith_dot_vec2_u32(var_0.yz, countOneBits(vec2<u32>(u_input.b, 0u))), var_0.x << (u_input.c % 32u)), ~firstLeadingBit(~var_0.x)), var_0.x);
    global1 = Struct_1(vec4<f32>(var_1.c.x, global1.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, 1000f) * _wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(-1537f * 175f))), global1.a.x), select(select(reverseBits(vec3<i32>(18107i, u_input.a, u_input.d.x)), vec3<i32>(_wgslsmith_sub_i32(0i, var_1.b.x), var_1.b.x, global1.b.x), false), ~(-var_1.b), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-734f, global1.c.x))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-224f, -1213f), vec2<f32>(-1283f, var_1.c.x)))))))), !(!(!select(vec4<bool>(global1.d.x, true, false, true), var_1.d, var_1.d.x))));
    var var_3 = global0[_wgslsmith_index_u32(~(~((firstLeadingBit(u_input.c) & _wgslsmith_add_u32(var_0.x, 4294967295u)) ^ reverseBits(53496u))), 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a + global1.a)) + global1.a), vec2<f32>(_wgslsmith_f_op_f32(func_1(var_3.a, _wgslsmith_f_op_f32(floor(global1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(global0[_wgslsmith_index_u32(15711u, 16u)])).x))), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.e, 2147483647i), global1.b.x));
}

