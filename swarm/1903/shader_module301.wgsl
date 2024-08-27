struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-3508i, 0i);

var<private> global1: array<vec4<i32>, 19>;

var<private> global2: array<u32, 12> = array<u32, 12>(13058u, 3354u, 6826u, 19704u, 25166u, 0u, 7579u, 53139u, 56478u, 11237u, 14899u, 1u);

var<private> global3: Struct_1;

var<private> global4: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> vec3<bool> {
    var var_0 = !((_wgslsmith_div_i32(arg_1.a.x, global3.a.x) <= 0i) && true);
    let var_1 = vec3<u32>(arg_3 >> ((_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)] << (1u % 32u), arg_3) << (min(_wgslsmith_clamp_u32(46684u, 6154u, 1u), ~arg_3) % 32u)) % 32u), arg_2.c, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.c, arg_0.c, arg_2.c, arg_0.c), vec4<u32>(1u, 1u, 19974u, 4294967295u)), firstTrailingBit(vec4<u32>(arg_2.c, arg_3, 4294967295u, 48915u))), arg_3, arg_2.c), vec3<u32>((global2[_wgslsmith_index_u32(arg_0.c, 12u)] >> (4294967295u % 32u)) ^ arg_0.c, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(56975u, 6420u), vec2<u32>(0u, global2[_wgslsmith_index_u32(arg_3, 12u)])), ~vec2<u32>(arg_0.c, global2[_wgslsmith_index_u32(4294967295u, 12u)])), arg_3)));
    var var_2 = var_1.xz | _wgslsmith_div_vec2_u32(~_wgslsmith_mod_vec2_u32(var_1.xz, vec2<u32>(21770u, global2[_wgslsmith_index_u32(arg_2.c, 12u)])) ^ ~(~var_1.yy), var_1.yz);
    global2 = array<u32, 12>();
    let var_3 = -arg_0.b.a;
    return !(!select(!(!vec3<bool>(true, false, arg_2.a)), vec3<bool>(select(true, arg_2.a, arg_0.a), arg_3 >= arg_2.c, any(vec2<bool>(true, arg_2.a))), vec3<bool>(arg_2.c != 1u, !arg_2.a, true)));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: i32) -> vec3<bool> {
    global4 = 14130i;
    var var_0 = Struct_2(!any(select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)))), Struct_1(arg_1.wy), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17960u, 12u)], 12u)], 12u)], _wgslsmith_add_i32(-_wgslsmith_mult_i32(~arg_1.x, ~arg_1.x), u_input.a));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(arg_0, 218f)))))));
    global0 = ~global3.a;
    let var_2 = -1098f;
    return !(!func_3(Struct_2(any(vec3<bool>(false, var_0.a, true)), Struct_1(vec2<i32>(var_0.b.a.x, arg_2)), 38519u, ~arg_1.x), Struct_1(_wgslsmith_mult_vec2_i32(arg_1.wy, vec2<i32>(2147483647i, u_input.a))), Struct_2(!var_0.a, Struct_1(vec2<i32>(-39410i, 1i)), _wgslsmith_clamp_u32(0u, 1u, 1997u), ~(-450i)), 0u));
}

fn func_1() -> vec4<i32> {
    global1 = array<vec4<i32>, 19>();
    var var_0 = all(!vec2<bool>(any(func_2(-562f, vec4<i32>(-1i, global3.a.x, global0.x, u_input.a), 4817i)), select(true, true, true)));
    global0 = global3.a;
    let var_1 = Struct_2(any(vec4<bool>(any(vec4<bool>(true, false, true, false)), true, select(true, select(true, true, false), true), true)), Struct_1(~_wgslsmith_mod_vec2_i32(~vec2<i32>(2147483647i, u_input.a), -global3.a)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(~764u, 12u)], 0u), vec2<u32>(global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30923u, 12u)], 12u)], 12u)], 12u)] << (57594u % 32u))), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)]), ~global2[_wgslsmith_index_u32(30338u, 12u)])), reverseBits(~countOneBits(1i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43182u, 12u)], 12u)], 12u)]), _wgslsmith_clamp_vec3_u32(vec3<u32>(4302u, 1u, 1u), vec3<u32>(53531u, 47724u, 4294967295u), vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(7448u, 12u)], 12u)]))) % 32u)));
    let var_2 = all(!select(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, var_1.a, false, var_1.a), vec4<bool>(true, var_1.a, var_1.a, var_1.a)), !vec4<bool>(var_1.a, true, true, false), var_1.a));
    return _wgslsmith_mod_vec4_i32(reverseBits(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, abs(~39886u)), 19u)]), ~(~vec4<i32>(min(2147483647i, global3.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, var_1.b.a.x, -2147483647i), vec3<i32>(global3.a.x, -15136i, 2147483647i)), global3.a.x ^ global3.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, 13450i, 37851i), vec3<i32>(global0.x, global3.a.x, -6237i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(countOneBits(-func_1()));
    var var_1 = 1059f < _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1169f * -1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-788f, -464f, false))))), -693f);
    let var_2 = Struct_2(all(vec4<bool>(false, true, any(vec2<bool>(true, false)), false)), Struct_1(func_1().yw), _wgslsmith_clamp_u32(firstLeadingBit(global2[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 12u)], 12u)]), 12u)]), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], firstLeadingBit(~28017u)), ~_wgslsmith_mult_i32(~(74275i >> (global2[_wgslsmith_index_u32(4294967295u, 12u)] % 32u)), -reverseBits(0i)));
    var var_3 = min(global0.x, firstLeadingBit(firstTrailingBit(i32(-1i) * -18935i)));
    let var_4 = Struct_1(vec2<i32>(~select(~106387i, global0.x ^ -2147483647i, true), max(~global3.a.x, var_2.d)));
    var var_5 = _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~(~(~vec2<u32>(4294967295u, 4294967295u))), max(~vec2<u32>(1u, 10837u), ~(~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)]))), min(vec2<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(101007u, 12u)], 12u)], _wgslsmith_div_u32(var_2.c, var_2.c)), select(~vec2<u32>(22154u, 1u), ~vec2<u32>(var_2.c, var_2.c), true))), _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(var_2.c, reverseBits(global2[_wgslsmith_index_u32(var_2.c, 12u)]))), vec2<u32>(22337u, min(~22052u, _wgslsmith_add_u32(65870u, 1u)))));
    global0 = ~vec2<i32>(~(~firstTrailingBit(2147483647i)), reverseBits(-(i32(-1i) * -15769i)));
    var var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(1543f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-306f)), -1000f)))))), ~_wgslsmith_clamp_u32(~106424u, _wgslsmith_div_u32(~63382u, ~1u), ~1u), vec4<f32>(_wgslsmith_f_op_f32(select(628f, _wgslsmith_f_op_f32(473f + -961f), var_2.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1657f * -1000f)), _wgslsmith_f_op_f32(ceil(-226f))), -248f, -906f));
}

