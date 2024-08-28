struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<u32, 14> = array<u32, 14>(61653u, 0u, 9044u, 8240u, 4294967295u, 0u, 35026u, 0u, 79959u, 0u, 0u, 4294967295u, 4294967295u, 13894u);

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: vec4<f32>;

var<private> global4: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(4527i, 2863f), Struct_1(0i, 1252f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>) -> u32 {
    var var_0 = arg_0;
    let var_1 = ~(~(vec2<u32>(u_input.b, 36153u) ^ (vec2<u32>(global1[_wgslsmith_index_u32(u_input.b, 14u)], global1[_wgslsmith_index_u32(82976u, 14u)]) & vec2<u32>(33337u, global1[_wgslsmith_index_u32(u_input.b, 14u)]))) >> (~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 14u)], 4294967295u), vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 14u)], 4294967295u), vec2<u32>(global1[_wgslsmith_index_u32(46399u, 14u)], global1[_wgslsmith_index_u32(1u, 14u)]))) % vec2<u32>(32u)));
    let var_2 = Struct_1(_wgslsmith_mod_i32(arg_0.e.x, 2147483647i), var_0.d.x);
    var var_3 = var_1.x;
    let var_4 = arg_0.a.x;
    return select(var_1.x, global1[_wgslsmith_index_u32(var_1.x, 14u)], true) | ~(~_wgslsmith_add_u32(32730u, 1u));
}

fn func_4(arg_0: u32, arg_1: i32) -> vec3<i32> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_dot_vec4_i32(-(vec4<i32>(arg_1, -2147483647i, arg_1, u_input.a.x) ^ vec4<i32>(arg_1, u_input.a.x, 0i, 0i)), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, 2698i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 22239i, 7800i))), -1554f), global4[_wgslsmith_index_u32(~select(arg_0, global1[_wgslsmith_index_u32(u_input.b, 14u)], abs(u_input.a.x) > ~0i), 2u)], vec2<u32>(~_wgslsmith_sub_u32(arg_0, arg_0), 1u) << (vec2<u32>(2540u, u_input.b) % vec2<u32>(32u)), _wgslsmith_sub_u32(arg_0 | _wgslsmith_mod_u32(u_input.b, 4294967295u), 1u) & (~(~u_input.b) << (~arg_0 % 32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(global3.zyx * global3.yyz);
    let var_2 = 615u;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(var_0.a.b + _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(floor(var_0.a.b)));
    var var_4 = vec3<bool>(!(global3.x >= 265f), true, false || !(!(-2147483647i > u_input.a.x)));
    return vec3<i32>(~19450i, -2147483647i, firstLeadingBit(-countOneBits(arg_1) >> ((arg_0 & var_2) % 32u)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-6724i, u_input.a.x, 17064i), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.x, 15102i, 17101i), vec3<i32>(arg_0.x, arg_2.a, 1i))), func_4(global1[_wgslsmith_index_u32(func_3(Struct_2(vec3<bool>(false, global2.x, false), vec3<bool>(global0.x, global0.x, global2.x), arg_2, arg_1.wy, vec3<i32>(arg_2.a, 2147483647i, arg_2.a)), Struct_2(vec3<bool>(false, global2.x, false), vec3<bool>(global2.x, false, global2.x), global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 14u)], 2u)], global3.zy, vec3<i32>(arg_2.a, 1i, arg_2.a)), global3.xyy), 14u)], arg_2.a << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23791u, 14u)], 14u)] % 32u))), _wgslsmith_mod_vec3_i32(-(vec3<i32>(arg_0.x, 1i, u_input.a.x) & vec3<i32>(arg_0.x, u_input.a.x, u_input.a.x)), reverseBits(max(vec3<i32>(arg_2.a, 1i, arg_2.a), vec3<i32>(-9804i, 1i, 14825i))))), ~firstTrailingBit(_wgslsmith_clamp_i32(-arg_0.x, -arg_0.x, ~2667i)), select(-u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-28642i, -20091i, -1i, func_4(4294967295u, u_input.a.x).x), ~(-vec4<i32>(u_input.a.x, arg_2.a, arg_0.x, u_input.a.x))), false));
    let var_1 = Struct_2(!vec3<bool>(!global0.x, all(select(vec2<bool>(global2.x, global2.x), vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x))), true), !vec3<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), global0.x, any(select(vec2<bool>(true, global2.x), vec2<bool>(true, global0.x), true))), global4[_wgslsmith_index_u32(u_input.b, 2u)], global3.xz, -countOneBits(countOneBits(vec3<i32>(32536i, -27173i, -12071i)) ^ abs(vec3<i32>(arg_2.a, -67639i, 5904i))));
    global4 = array<Struct_1, 2>();
    var var_2 = firstTrailingBit(vec4<i32>(-1i) * -(reverseBits(vec4<i32>(-1i, arg_0.x, arg_0.x, var_0)) | _wgslsmith_add_vec4_i32(vec4<i32>(var_0, -4027i, var_0, 30674i), vec4<i32>(u_input.a.x, 1i, arg_2.a, arg_2.a))));
    var var_3 = var_1.a;
    return _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(912f, arg_2.b, 1021f)));
}

fn func_1(arg_0: vec4<f32>) -> Struct_3 {
    let var_0 = vec3<f32>(-538f, -910f, -1143f);
    let var_1 = _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(firstLeadingBit(32612i), -u_input.a.x), u_input.a.x), vec2<i32>(58422i, -2147483647i)), arg_0, Struct_1(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(184f))))));
    var var_2 = u_input.a.x;
    let var_3 = vec3<u32>(~(~4294967295u), ~global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(u_input.b, 0u)) ^ min(_wgslsmith_mult_u32(u_input.b, 73112u), global1[_wgslsmith_index_u32(4294967295u, 14u)]), 14u)], global1[_wgslsmith_index_u32(61365u, 14u)]);
    var var_4 = all(select(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), global2.x)), select(vec2<bool>(true, global2.x), select(vec2<bool>(global0.x, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), !vec2<bool>(global2.x, global2.x)), any(!vec3<bool>(true, global2.x, true))), global0.x));
    return Struct_3(global4[_wgslsmith_index_u32(~((max(u_input.b, 218u) >> (_wgslsmith_add_u32(37970u, 83529u) % 32u)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1[_wgslsmith_index_u32(30349u, 14u)], var_3.x, global1[_wgslsmith_index_u32(u_input.b, 14u)]), abs(vec4<u32>(64984u, var_3.x, 1u, global1[_wgslsmith_index_u32(var_3.x, 14u)])))), 2u)], global4[_wgslsmith_index_u32(0u, 2u)], vec2<u32>(1u, _wgslsmith_mult_u32(4294967295u, _wgslsmith_add_u32(var_3.x, u_input.b & u_input.b))), 1u);
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec2<i32>) -> u32 {
    let var_0 = (_wgslsmith_mult_vec2_u32(max(vec2<u32>(global1[_wgslsmith_index_u32(arg_0.c.x, 14u)], arg_0.d), vec2<u32>(46233u, arg_0.d)), vec2<u32>(arg_0.c.x, 23116u)) | ~vec2<u32>(min(3685u, 1u), ~u_input.b)) << (min(_wgslsmith_add_vec2_u32((arg_0.c >> (arg_0.c % vec2<u32>(32u))) ^ ~arg_0.c, arg_0.c), _wgslsmith_clamp_vec2_u32(max(firstTrailingBit(arg_0.c), arg_0.c << (vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 14u)], 1u) % vec2<u32>(32u))), vec2<u32>(95298u, arg_0.c.x), arg_0.c)) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(max(-563f, global3.x));
    let var_2 = Struct_1(~arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3.x, 1145f, true)) - 559f));
    let var_3 = any(select(vec2<bool>(any(vec4<bool>(false, false, false, global0.x)), any(vec2<bool>(true, true))), select(vec2<bool>(!global0.x, global2.x || false), !select(vec2<bool>(true, true), vec2<bool>(true, global0.x), true), true == !global0.x), -757f > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(375f, var_1, false)), 204f))));
    let var_4 = _wgslsmith_add_vec2_u32(~vec2<u32>(~u_input.b, ~(~71556u)), ~vec2<u32>(~global1[_wgslsmith_index_u32(var_0.x, 14u)], ~1u) >> (_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(min(vec2<u32>(0u, 29532u), var_0), vec2<u32>(u_input.b, 1u)), vec2<u32>(~arg_0.d, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(1239u, 14u)], var_0.x))) % vec2<u32>(32u)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_5(func_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.x, global3.x, global3.x, 1000f), vec4<f32>(global3.x, -212f, -1000f, global3.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-541f, -153f, -665f, global3.x) - vec4<f32>(988f, global3.x, -1230f, global3.x))))), vec4<f32>(global3.x, -165f, 602f, -149f), u_input.a);
    var var_1 = func_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(sign(1045f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-196f, global3.x, -288f, 1961f), vec4<f32>(global3.x, global3.x, -1845f, global3.x))))))));
    global2 = vec2<bool>((true || !any(vec2<bool>(global0.x, global2.x))) & false, _wgslsmith_f_op_f32(abs(1914f)) >= _wgslsmith_f_op_vec3_f32(func_2(u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, global3.x, -1356f, global3.x), vec4<f32>(-1246f, global3.x, global3.x, var_1.a.b), false))), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(147f, var_1.a.b, global3.x, -1595f) - vec4<f32>(677f, -522f, -1009f, var_1.b.b))).b)).x);
    global1 = array<u32, 14>();
    var_1 = Struct_3(func_1(vec4<f32>(global3.x, -185f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.x * -1147f))), global3.x)).a, global4[_wgslsmith_index_u32(func_3(Struct_2(!(!vec3<bool>(true, true, global0.x)), select(!vec3<bool>(global2.x, false, true), vec3<bool>(true, global0.x, true), vec3<bool>(global2.x, false, global2.x)), Struct_1(abs(-52905i), global3.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.yx) - _wgslsmith_f_op_vec2_f32(-global3.xx)), vec3<i32>(~2147483647i, 2147483647i, i32(-1i) * -2147483647i)), Struct_2(select(select(vec3<bool>(global2.x, global2.x, global0.x), vec3<bool>(global0.x, false, false), global2.x), vec3<bool>(global0.x, false, true), vec3<bool>(true, false, true)), vec3<bool>(global3.x <= global3.x, global2.x, !global0.x), func_1(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, 711f, -1205f, -138f), vec4<f32>(var_1.a.b, global3.x, 1338f, var_1.a.b))).b, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3.x, -1006f))), _wgslsmith_div_vec3_i32(vec3<i32>(var_1.b.a, 2147483647i, 0i) & vec3<i32>(u_input.a.x, -1i, u_input.a.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(2152i, 57993i, u_input.a.x), vec3<i32>(u_input.a.x, 27138i, -5745i)))), global3.wyw), 2u)], reverseBits(vec2<u32>(abs(0u), ~(global1[_wgslsmith_index_u32(10253u, 14u)] ^ var_0))), ~(~(~func_1(vec4<f32>(global3.x, -941f, global3.x, var_1.a.b)).d)));
    global1 = array<u32, 14>();
    var_1 = Struct_3(func_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.x, var_1.a.b, 688f, 311f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.b, 1244f, -1716f, -1299f) + vec4<f32>(819f, 313f, 285f, 737f)))))).a, var_1.b, (var_1.c << (var_1.c % vec2<u32>(32u))) >> (var_1.c % vec2<u32>(32u)), min(41872u, var_0));
    global1 = array<u32, 14>();
    let var_2 = var_1.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(global3.x, _wgslsmith_sub_i32(-abs(-1i), ~(-2259i | _wgslsmith_mod_i32(-2147483647i, var_1.b.a))), var_1.b.a, ~vec3<u32>(0u, _wgslsmith_add_u32(var_0, 4294967295u), ~u_input.b >> (func_1(vec4<f32>(global3.x, var_1.b.b, -343f, -906f)).c.x % 32u)), ~max(_wgslsmith_mod_vec3_u32(vec3<u32>(78140u, 23051u, 6264u), ~vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 14u)], 4211u)), ~vec3<u32>(70469u, 1u, global1[_wgslsmith_index_u32(1u, 14u)])));
}

