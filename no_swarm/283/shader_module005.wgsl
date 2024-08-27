struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec4<bool>,
    d: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32 = 1i;

var<private> global2: array<i32, 26> = array<i32, 26>(0i, 2147483647i, 1i, 2147483647i, 6871i, -15064i, 21229i, 2147483647i, 0i, 2147483647i, -1i, 0i, 2147483647i, 22622i, 63597i, 45703i, -1i, 0i, 33135i, -53766i, -1i, 6384i, 38444i, -19003i, -49345i, 1i);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec4<bool> {
    let var_0 = Struct_4(~(u_input.a >> (u_input.a % vec4<u32>(32u))) << (~(select(vec4<u32>(31153u, 0u, u_input.a.x, 6039u), u_input.a, arg_0.c) >> (vec4<u32>(1u, u_input.a.x, u_input.a.x, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global2 = array<i32, 26>();
    let var_1 = Struct_1(i32(-1i) * -16277i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -213f) * -663f), 1000f, arg_0.c.x)), _wgslsmith_f_op_f32(1636f + -470f), true | all(select(vec2<bool>(true, arg_0.b), vec2<bool>(false, arg_0.c.x), arg_0.c.x)))));
    let var_2 = Struct_1(arg_0.d, var_1.b);
    let var_3 = vec2<i32>(~(-(~1i)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_1, -24083i, arg_0.d, var_1.a), -abs(vec4<i32>(-18782i, 0i, global2[_wgslsmith_index_u32(u_input.a.x, 26u)], -2147483647i))), -34984i));
    return vec4<bool>(any(vec3<bool>(true, arg_0.b, true)) | (true && (false && arg_0.b)), any(vec4<bool>(arg_0.b, !(!arg_0.a), all(arg_0.c.xy), arg_0.b)), arg_0.c.x, arg_0.c.x == false);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: i32, arg_3: vec2<u32>) -> Struct_4 {
    global1 = arg_1.a;
    var var_0 = arg_1;
    var var_1 = vec3<bool>(!all(func_3(Struct_2(false, true, vec4<bool>(false, false, false, true), global2[_wgslsmith_index_u32(u_input.a.x, 26u)]), arg_1.a)), false, true | all(vec2<bool>(true, true)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.b, 169f)))))))));
    var var_3 = Struct_3(vec3<bool>(!(~arg_1.a != -2147483647i), _wgslsmith_add_i32(arg_1.a, -2147483647i) > arg_2, var_0.a >= 2147483647i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-375f, -244f, 1496f, var_2.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(278f, -2223f, var_2.x, var_2.x) + vec4<f32>(1239f, -176f, arg_1.b, -442f)))) - vec4<f32>(_wgslsmith_f_op_f32(floor(arg_1.b)), 277f, -1942f, arg_1.b)));
    return arg_0;
}

fn func_4(arg_0: Struct_4) -> Struct_4 {
    var var_0 = select(!any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))), true, any(select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, false)), any(vec4<bool>(true, true, false, true))), true)));
    let var_1 = vec2<bool>(true, true);
    var var_2 = vec3<bool>(true, var_1.x, all(select(!func_3(Struct_2(true, true, vec4<bool>(var_1.x, true, false, var_1.x), global2[_wgslsmith_index_u32(arg_0.a.x, 26u)]), global2[_wgslsmith_index_u32(18125u, 26u)]).xw, select(select(var_1, var_1, var_1), vec2<bool>(false, false), var_1.x), func_3(Struct_2(false, false, vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), 1i), ~1i).xz)));
    let var_3 = Struct_2(false, var_2.x, vec4<bool>(false, true, (_wgslsmith_mult_u32(4294967295u, 1u) << ((13145u >> (arg_0.a.x % 32u)) % 32u)) == func_2(arg_0, Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], -671f), ~42387i, arg_0.a.xz).a.x, var_1.x), abs(-global2[_wgslsmith_index_u32(119816u, 26u)]));
    global2 = array<i32, 26>();
    return arg_0;
}

fn func_5(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = firstLeadingBit(~(~(~(~0u))));
    var var_1 = !vec4<bool>(arg_0.a.x == ~_wgslsmith_clamp_u32(54435u, 0u, 1u), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), all(vec4<bool>(true, false, false, false)))), !all(func_3(Struct_2(false, true, vec4<bool>(false, true, true, true), global2[_wgslsmith_index_u32(u_input.a.x, 26u)]), -45309i)), !(any(vec2<bool>(true, false)) != true));
    let var_2 = ~(~_wgslsmith_dot_vec2_u32(~(u_input.a.yy | arg_0.a.xx), vec2<u32>(u_input.a.x & u_input.a.x, 20562u)));
    let var_3 = Struct_2(~7324u <= ~(min(arg_0.a.x, 54630u) ^ ~28820u), var_1.x, vec4<bool>(var_1.x, var_1.x, func_3(Struct_2(var_1.x, any(var_1.xw), vec4<bool>(var_1.x, var_1.x, false, var_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global2[_wgslsmith_index_u32(arg_2.x, 26u)], global2[_wgslsmith_index_u32(0u, 26u)], arg_1.x), arg_1)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 12120i), vec2<i32>(arg_1.x, 24278i))).x, true), arg_1.x & 126914i);
    let var_4 = var_1.ywx;
    return Struct_2(false, !all(func_3(Struct_2(true, false, vec4<bool>(true, var_3.b, var_3.b, var_1.x), arg_1.x), countOneBits(global2[_wgslsmith_index_u32(var_2, 26u)])).yyx), var_3.c, var_3.d);
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec2<bool>) -> u32 {
    var var_0 = 109288u;
    global0 = 915f;
    let var_1 = func_5(func_4(func_2(Struct_4(~vec4<u32>(u_input.a.x, u_input.a.x, 1u, 32538u)), Struct_1(abs(arg_0.d), _wgslsmith_f_op_f32(-arg_1)), 38087i, ~u_input.a.xy)), vec4<i32>(-7728i, i32(-1i) * -43813i, 6516i, arg_0.d), vec4<u32>(1u, _wgslsmith_mod_u32(abs(u_input.a.x), u_input.a.x) >> (u_input.a.x % 32u), u_input.a.x, 1u));
    global0 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_1)), arg_1))))))));
    return u_input.a.x;
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    global2 = array<i32, 26>();
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(0i, -arg_2.d, i32(-1i) * -67717i, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) >> (~u_input.a.x % 32u), 26u)]), ~vec4<i32>(_wgslsmith_add_i32(-13567i, global2[_wgslsmith_index_u32(1u, 26u)]), abs(95066i), -1i, firstLeadingBit(arg_2.d))) >> (select(vec4<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(func_4(Struct_4(u_input.a)).a.xyx, max(u_input.a.zyw, vec3<u32>(arg_0, u_input.a.x, u_input.a.x))), firstLeadingBit(u_input.a.x), ~arg_0), ~select(vec4<u32>(43473u, u_input.a.x, 4294967295u, arg_0), select(vec4<u32>(18654u, arg_0, arg_0, 64235u), u_input.a, vec4<bool>(arg_1.a.x, true, arg_2.c.x, arg_1.a.x)), vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, false)), !(!vec4<bool>(false, arg_1.a.x, true, arg_1.a.x))) % vec4<u32>(32u));
    var var_1 = func_5(Struct_4(~(u_input.a << (select(u_input.a, u_input.a, arg_1.a.x) % vec4<u32>(32u)))), vec4<i32>(2147483647i, var_0.x, 10151i, _wgslsmith_mod_i32(arg_2.d, -1i)), firstTrailingBit(~reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 18164u, 0u)))).c;
    let var_2 = -_wgslsmith_mult_vec2_i32(vec2<i32>(-(~10217i), ~global2[_wgslsmith_index_u32(u_input.a.x ^ 34462u, 26u)]), max(_wgslsmith_div_vec2_i32(var_0.zz, _wgslsmith_add_vec2_i32(var_0.wy, vec2<i32>(var_0.x, 0i))), vec2<i32>(global2[_wgslsmith_index_u32(1u, 26u)], 40587i)));
    global1 = global2[_wgslsmith_index_u32(reverseBits(4294967295u), 26u)];
    return min(firstLeadingBit(_wgslsmith_mult_u32(27665u, ~u_input.a.x)), select(arg_0, ~arg_0, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(~func_1(Struct_2(false, false, vec4<bool>(false, false, false, false), global2[_wgslsmith_index_u32(4294967295u, 26u)]), _wgslsmith_f_op_f32(730f + 400f), vec2<bool>(false, true)), Struct_3(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-938f, 250f, 198f, 723f))), func_5(Struct_4(~vec4<u32>(22249u, u_input.a.x, u_input.a.x, u_input.a.x)), -_wgslsmith_add_vec4_i32(vec4<i32>(-32281i, global2[_wgslsmith_index_u32(u_input.a.x, 26u)], 10178i, global2[_wgslsmith_index_u32(10817u, 26u)]), vec4<i32>(25226i, -2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)])), vec4<u32>(1u, u_input.a.x, 1u, abs(107308u)))) != u_input.a.x;
    let var_1 = _wgslsmith_dot_vec3_i32(min(-(~_wgslsmith_mod_vec3_i32(vec3<i32>(-48540i, global2[_wgslsmith_index_u32(u_input.a.x, 26u)], 16107i), vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], 190i, 18973i))), vec3<i32>(~global2[_wgslsmith_index_u32(~u_input.a.x, 26u)], ~_wgslsmith_add_i32(global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(u_input.a.x, 26u)]), -2732i)), vec3<i32>(-_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(abs(1u), 26u)], i32(-1i) * -18052i), -22694i, max(-2833i, -818i)));
    global0 = 1998f;
    var var_2 = 0u;
    let var_3 = func_2(func_4(Struct_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, 0u), ~vec4<u32>(u_input.a.x, 1u, u_input.a.x, 94120u), u_input.a))), Struct_1(abs(_wgslsmith_sub_i32(1i, var_1)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-567f))))), max(global2[_wgslsmith_index_u32(~(~u_input.a.x) << (u_input.a.x % 32u), 26u)], var_1), ~(~_wgslsmith_add_vec2_u32(u_input.a.wz, u_input.a.yz) ^ (~vec2<u32>(20129u, 4294967295u) << (_wgslsmith_sub_vec2_u32(u_input.a.yx, u_input.a.zw) % vec2<u32>(32u)))));
    let var_4 = ~79449u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1831f * _wgslsmith_f_op_f32(417f + -1014f)), 660f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -942f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(987f, 2836f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-651f, 472f, -835f, 406f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1366f, 658f, 1312f, -230f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-125f, -724f, 1614f, -2192f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1292f))))))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 540f))) * 1536f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1003f - _wgslsmith_f_op_f32(select(440f, -490f, true))))));
}

