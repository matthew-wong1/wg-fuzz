struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec4<u32>(0u, 64114u, 6363u, 10230u)), vec3<bool>(true, true, false));

var<private> global2: vec3<bool>;

var<private> global3: vec4<i32>;

var<private> global4: array<u32, 28>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = true;
    let var_1 = Struct_3(Struct_2(Struct_1(global1.a.a, select(vec4<u32>(1u, global4[_wgslsmith_index_u32(u_input.a, 28u)], global4[_wgslsmith_index_u32(18224u, 28u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(11097u, 28u)], 28u)]), ~u_input.b, select(global1.a.a, global1.a.a, vec4<bool>(true, true, global2.x, global1.a.a.x)))), select(!(!global1.b), select(vec3<bool>(false, true, false), select(vec3<bool>(false, global1.b.x, global1.a.a.x), vec3<bool>(global2.x, true, false), true), !global1.a.a.zxz), select(vec3<bool>(true, true, true), global1.b, true))), vec3<u32>(~abs(2917u), u_input.a, global1.a.b.x));
    var var_2 = 1000f;
    let var_3 = abs(global3.yzy);
    var var_4 = vec2<i32>(global3.x, countOneBits(0i << (u_input.b.x % 32u)));
    return 0u;
}

fn func_2(arg_0: vec3<bool>) -> Struct_4 {
    var var_0 = global1.a.b.x;
    var_0 = _wgslsmith_div_u32(global1.a.b.x, _wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(~0u >> (~4294967295u % 32u), _wgslsmith_mult_u32(func_3(), _wgslsmith_add_u32(global4[_wgslsmith_index_u32(70194u, 28u)], 0u)))));
    var var_1 = _wgslsmith_f_op_f32(trunc(-1613f));
    var var_2 = Struct_2(Struct_1(select(vec4<bool>(!global2.x, !global2.x, false, all(global1.a.a)), !global1.a.a, !select(global1.a.a, vec4<bool>(arg_0.x, false, global2.x, false), arg_0.x)), global1.a.b), select(!vec3<bool>(any(vec2<bool>(true, global1.a.a.x)), global1.b.x, all(global1.a.a.wzw)), select(global1.b, select(!vec3<bool>(global2.x, arg_0.x, true), arg_0, vec3<bool>(arg_0.x, global2.x, global1.b.x)), !(!global1.b)), true));
    var var_3 = select(6921u, ~3273u, !any(vec4<bool>(global1.b.x, var_2.a.b.x > 80688u, false, true)));
    return Struct_4(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1041f, 310f) * _wgslsmith_f_op_f32(f32(-1f) * -706f)))), _wgslsmith_f_op_f32(ceil(1630f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(906f - -929f)))), _wgslsmith_f_op_f32(-1f)), ~(global3.xz | vec2<i32>(~global0[_wgslsmith_index_u32(28248u, 19u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, 0u), 19u)])), var_2.a.a.yzx, Struct_2(Struct_1(select(select(vec4<bool>(global1.b.x, true, arg_0.x, arg_0.x), vec4<bool>(false, false, global2.x, global1.b.x), global2.x), vec4<bool>(false, true, arg_0.x, true), false), var_2.a.b), var_2.b));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: i32, arg_3: f32) -> u32 {
    let var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(13069u, ~u_input.b.x, u_input.b.x), vec3<u32>(firstTrailingBit(arg_0.d.a.b.x), _wgslsmith_sub_u32(1u >> (global1.a.b.x % 32u), 0u) ^ arg_0.d.a.b.x, firstTrailingBit(~global4[_wgslsmith_index_u32(arg_0.d.a.b.x, 28u)]) | global4[_wgslsmith_index_u32(~1u, 28u)]));
    var var_1 = !select(vec4<bool>(global2.x, true, global2.x, !any(vec4<bool>(global1.b.x, true, false, global1.b.x))), !func_2(global1.a.a.yxw).d.a.a, global1.a.a);
    var var_2 = Struct_5(35461i, (global3.x == 1i) && !(!arg_0.d.a.a.x), Struct_3(Struct_2(func_2(func_2(global1.a.a.yyz).d.b).d.a, select(select(var_1.wwz, vec3<bool>(true, global2.x, arg_0.d.b.x), true), !vec3<bool>(true, global2.x, true), vec3<bool>(global2.x, arg_0.d.b.x, false))), vec3<u32>(global4[_wgslsmith_index_u32(54571u, 28u)], firstLeadingBit(_wgslsmith_div_u32(arg_0.d.a.b.x, var_0.x)), func_3())));
    let var_3 = Struct_5(arg_0.b.x, false, Struct_3(func_2(!(!var_1.wxz)).d, ~abs(vec3<u32>(arg_1.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 28u)], 28u)], var_0.x))));
    var_1 = select(vec4<bool>(arg_0.d.a.a.x, false, _wgslsmith_sub_u32(51854u, 1u | arg_0.d.a.b.x) == _wgslsmith_sub_u32(~98599u, 1725u), global2.x), var_3.c.a.a.a, false);
    return arg_1.x;
}

fn func_1(arg_0: bool) -> Struct_3 {
    global0 = array<i32, 19>();
    global4 = array<u32, 28>();
    let var_0 = ~global1.a.b.x;
    let var_1 = _wgslsmith_mult_i32(~global0[_wgslsmith_index_u32(func_4(func_2(!global1.a.a.xxz), global1.a.b.yyy, global0[_wgslsmith_index_u32(19020u, 19u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1692f)), 1630f)), 19u)], _wgslsmith_dot_vec3_i32((global3.yxx << (~vec3<u32>(0u, global1.a.b.x, u_input.a) % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(global1.a.b.xyx, ~vec3<u32>(global1.a.b.x, var_0, u_input.a)) % vec3<u32>(32u)), global3.zyz));
    return Struct_3(Struct_2(global1.a, global1.b), vec3<u32>(_wgslsmith_clamp_u32(1u, u_input.b.x >> (global4[_wgslsmith_index_u32(global1.a.b.x, 28u)] % 32u), ~global1.a.b.x), global1.a.b.x, 4294967295u) << (vec3<u32>(1u, _wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(func_4(Struct_4(vec4<f32>(-293f, -858f, 547f, 751f), global3.yx, vec3<bool>(false, global1.b.x, global1.b.x), Struct_2(Struct_1(global1.a.a, vec4<u32>(u_input.b.x, 55756u, u_input.b.x, 49193u)), vec3<bool>(global2.x, global1.a.a.x, global2.x))), u_input.b.zwx, 67699i, -326f), 28u)], global4[_wgslsmith_index_u32(reverseBits(var_0), 28u)], reverseBits(var_0)), u_input.a) % vec3<u32>(32u)));
}

fn func_5(arg_0: Struct_3, arg_1: f32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2693f)) * arg_1));
    let var_1 = func_2(global1.a.a.xzy).a.x;
    let var_2 = Struct_5(43325i, all(global2.zz), arg_0);
    global1 = Struct_2(arg_0.a.a, arg_0.a.b);
    return func_2(arg_0.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(false), func_2(func_2(!func_1(true).a.a.a.xzy).c).a.x);
    let var_1 = -348f;
    var var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -min(var_0.b, firstLeadingBit(var_0.b)), vec2<i32>(-31041i, -8491i));
    var var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(global1.a.b.x, _wgslsmith_div_u32((11495u & u_input.b.x) << (max(global1.a.b.x, u_input.a) % 32u), u_input.a), firstTrailingBit(func_1(!global2.x).a.a.b.x), firstTrailingBit(var_0.d.a.b.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(8891u, ~global4[_wgslsmith_index_u32(1u, 28u)], var_0.d.a.b.x << (_wgslsmith_add_u32(1u, 1u) % 32u), 24191u), ~countOneBits(_wgslsmith_sub_vec4_u32(var_0.d.a.b, var_0.d.a.b)), select(vec4<u32>(_wgslsmith_dot_vec4_u32(global1.a.b, global1.a.b), 36001u, _wgslsmith_clamp_u32(global1.a.b.x, 58831u, 16692u), 1u), select(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, global4[_wgslsmith_index_u32(var_0.d.a.b.x, 28u)], 0u, global1.a.b.x), vec4<u32>(41139u, 0u, global4[_wgslsmith_index_u32(4294967295u, 28u)], global1.a.b.x)), ~var_0.d.a.b, vec4<bool>(global1.a.a.x, false, false, global1.a.a.x)), _wgslsmith_dot_vec3_u32(global1.a.b.zxy, vec3<u32>(0u, u_input.a, 40316u)) > max(0u, 1u))));
    var_0 = func_2(!vec3<bool>(!func_2(global1.b).c.x, false, false));
    var var_4 = global1.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 805f, var_1, var_0.a.x) - var_0.a) + func_2(global1.b).a)) - var_0.a), _wgslsmith_f_op_f32(718f * var_1), var_0.a.wx, 1172f);
}

