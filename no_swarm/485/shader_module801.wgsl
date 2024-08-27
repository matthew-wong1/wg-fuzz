struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(-145i, -49986i), vec2<i32>(35614i, 509i), vec2<i32>(27905i, i32(-2147483648)), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(1i, 38594i), vec2<i32>(-36885i, 35505i), vec2<i32>(6835i, 21890i), vec2<i32>(-1i, 23701i), vec2<i32>(-38804i, 1i), vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, -10501i), vec2<i32>(0i, -3693i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-1i, -1i), vec2<i32>(35432i, i32(-2147483648)), vec2<i32>(13281i, 47656i));

var<private> global1: vec2<f32> = vec2<f32>(292f, 770f);

var<private> global2: array<Struct_4, 15>;

var<private> global3: array<Struct_1, 15>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = select(-max(~0i, 2147483647i), arg_1.x, true);
    global0 = array<vec2<i32>, 16>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1213f);
    var var_2 = all(!select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(false, true, true))));
    global3 = array<Struct_1, 15>();
    return _wgslsmith_div_u32(~(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, 4294967295u, 13949u), vec3<u32>(arg_0, arg_0, arg_0)), _wgslsmith_sub_vec3_u32(vec3<u32>(8258u, arg_0, 133846u), vec3<u32>(arg_0, arg_0, arg_0)))), arg_0);
}

fn func_3() -> vec3<i32> {
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1280f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(574f, -226f) - -970f))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-274f, 165f))) - vec2<f32>(global1.x, _wgslsmith_f_op_f32(-186f - -1089f))))));
    global2 = array<Struct_4, 15>();
    var var_0 = Struct_4(50067i, Struct_2(reverseBits(~vec4<i32>(u_input.a, -12954i, u_input.a, 33176i)), global3[_wgslsmith_index_u32(max(~1u, 1u), 15u)]), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, -1056f) * vec4<f32>(global1.x, _wgslsmith_f_op_f32(-168f - global1.x), _wgslsmith_f_op_f32(step(global1.x, -865f)), -648f)), vec4<f32>(global1.x, _wgslsmith_f_op_f32(ceil(global1.x)), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), Struct_1(select(abs(~(-3878i)), i32(-1i) * -1i, false)), Struct_3(31292u, Struct_2(vec4<i32>(countOneBits(8070i), -u_input.a, u_input.a, _wgslsmith_mod_i32(u_input.a, -1i)), global3[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(10355u, 66082u), 1u), 15u)]), firstLeadingBit(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u))), Struct_2(vec4<i32>(u_input.a, 2147483647i, u_input.a, -u_input.a), Struct_1(i32(-1i) * -26725i)), true));
    var_0 = global2[_wgslsmith_index_u32(var_0.e.a, 15u)];
    let var_1 = vec3<u32>(1u, ~_wgslsmith_add_u32(~var_0.e.a, _wgslsmith_div_u32(0u, 1u)), 68186u) >> (vec3<u32>(_wgslsmith_clamp_u32(~1u, _wgslsmith_mult_u32(~0u, var_0.e.c.x & 38555u), firstLeadingBit(~var_0.e.a)), _wgslsmith_mod_u32(~(~var_0.e.a), 1u), countOneBits(93427u)) % vec3<u32>(32u));
    return -(firstTrailingBit(var_0.b.a.zzy) & var_0.e.b.a.ywx);
}

fn func_2(arg_0: vec4<f32>) -> Struct_4 {
    let var_0 = ~(func_3() ^ select(_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.a, -1i, -1407i), abs(vec3<i32>(-47571i, 1i, 0i))), vec3<i32>(-61625i, u_input.a, 2147483647i), true));
    global0 = array<vec2<i32>, 16>();
    let var_1 = vec4<bool>(((1i & _wgslsmith_clamp_i32(-2147483647i, 6335i, 2147483647i)) < _wgslsmith_sub_i32(_wgslsmith_add_i32(-15144i, u_input.a), _wgslsmith_mod_i32(2147483647i, var_0.x))) || false, any(vec4<bool>(true, false, true, all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true))))), true, !all(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))));
    global2 = array<Struct_4, 15>();
    let var_2 = var_1.zx;
    return global2[_wgslsmith_index_u32(~max(~(~4294967295u), _wgslsmith_mod_u32(1u, ~1u)), 15u)];
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(~(-38489i), firstTrailingBit(arg_0 & 46999i), _wgslsmith_add_i32(-58623i, 1i)) & vec3<i32>(countOneBits(3852i), arg_3.e.b.a.x, 1i), firstTrailingBit(arg_3.e.b.a.xwz & vec3<i32>(_wgslsmith_clamp_i32(-47897i, arg_3.d.a, u_input.a), func_2(vec4<f32>(-612f, arg_3.c.x, global1.x, -1000f)).a, 1i)));
    let var_1 = countOneBits(_wgslsmith_mod_u32(abs(~29786u), ~_wgslsmith_add_u32(~6592u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), arg_3.e.c.yy))));
    var var_2 = -1195f;
    let var_3 = func_2(arg_3.c).b;
    var var_4 = arg_3;
    return func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.x + 794f), _wgslsmith_f_op_f32(-global1.x))), var_4.c.x, global1.x, 1050f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_4.c, vec4<f32>(-2008f, var_4.c.x, -316f, arg_3.c.x)))))).d;
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> u32 {
    global0 = array<vec2<i32>, 16>();
    var var_0 = false;
    var var_1 = arg_1.a;
    var var_2 = vec4<u32>(4294967295u, reverseBits(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0, arg_0) >> (vec3<u32>(arg_0, arg_0, 87763u) % vec3<u32>(32u)), vec3<u32>(0u, 4294967295u, 0u)))), ~arg_0, ~(firstTrailingBit(~4294967295u) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0, 25050u, arg_0), vec3<u32>(arg_0, arg_0, 96089u)) % 32u)));
    let var_3 = ~(-vec2<i32>(-32608i, u_input.a)) << (vec2<u32>(0u, abs(func_2(vec4<f32>(357f, global1.x, -334f, -636f)).e.a) << ((var_2.x << (_wgslsmith_sub_u32(arg_0, var_2.x) % 32u)) % 32u)) % vec2<u32>(32u));
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, _wgslsmith_mod_u32(~36282u, _wgslsmith_sub_u32(arg_0, var_2.x))), vec3<u32>(_wgslsmith_mod_u32(1u, arg_0 | var_2.x), ~firstLeadingBit(arg_0), ~_wgslsmith_mult_u32(arg_0, 24167u))), 56847u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))) ^ 22309u, 15u)];
    let var_1 = vec2<u32>(1u, ~func_5(countOneBits(59930u), func_4(12496i, ~vec3<u32>(54678u, 1u, 1u), func_1(4294967295u, vec3<i32>(-26625i, 2147483647i, -9663i), Struct_1(2147483647i)), func_2(vec4<f32>(-696f, 1075f, 817f, 932f)))));
    let var_2 = select(select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, true), true))), !(!vec2<bool>(select(true, false, true), any(vec3<bool>(true, false, false)))), !(_wgslsmith_add_u32(~var_1.x, _wgslsmith_mod_u32(4294967295u, var_1.x)) > 12811u));
    var var_3 = var_2;
    let var_4 = func_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x), global1.x, 952f)))).e.e;
    var var_5 = i32(-1i) * -var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, 47616u), _wgslsmith_f_op_f32(ceil(857f)), ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x & 1u, _wgslsmith_clamp_u32(1u, var_1.x, var_1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.x, 1u), vec3<u32>(var_1.x, 14276u, var_1.x))), ~vec3<u32>(var_1.x, var_1.x, 1u)), 16u)]);
}

