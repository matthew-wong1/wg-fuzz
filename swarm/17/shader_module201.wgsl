struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(false, false, false);

var<private> global1: u32 = 1u;

var<private> global2: array<i32, 16>;

var<private> global3: Struct_1;

var<private> global4: bool = true;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_3) -> u32 {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_add_u32(max(~51929u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.d.x, u_input.e.x) ^ ~arg_2.c.e.zz, firstTrailingBit(vec2<u32>(0u, global3.e.x)))), arg_2.a.e.x);
    let var_2 = -max(u_input.c, vec3<i32>(-(~36117i), arg_2.b.b.x, -_wgslsmith_clamp_i32(arg_2.b.c, arg_2.b.c, arg_1.c)));
    let var_3 = _wgslsmith_f_op_vec2_f32(min(arg_2.a.c.zx, global3.c.xy));
    let var_4 = true;
    return _wgslsmith_mod_u32(abs(~var_0.a.a.x) >> (((~74971u | u_input.e.x) | 1u) % 32u), 58613u);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec4<i32>) -> vec3<u32> {
    global3 = Struct_1(vec4<u32>(~global3.a.x, abs(~(~global3.d.x)), 4294967295u, global3.e.x), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-119f, 1435f, arg_0.x)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 380f, -1242f))))))), vec2<u32>(_wgslsmith_add_u32(~(~global3.a.x), abs(global3.d.x)), u_input.e.x), ~firstLeadingBit(vec3<u32>(u_input.a, 20200u, 7871u) >> (global3.a.yyw % vec3<u32>(32u))) >> ((~vec3<u32>(global3.e.x, 83806u, u_input.e.x) | vec3<u32>(func_3(global3.a.xyy, Struct_2(arg_0, u_input.c.yz, 1i), Struct_3(Struct_1(global3.a, global3.b, global3.c, u_input.e.zz, global3.a.xzx), Struct_2(global3.c.yy, arg_1, arg_1.x), Struct_1(vec4<u32>(4997u, u_input.e.x, 12140u, global3.d.x), false, global3.c, global3.d, u_input.e.xww))), _wgslsmith_add_u32(41650u, u_input.e.x), 46562u >> (u_input.e.x % 32u))) % vec3<u32>(32u)));
    var var_0 = Struct_3(Struct_1(firstTrailingBit(vec4<u32>(u_input.a, 0u, global3.d.x, global3.e.x)), true, vec3<f32>(global3.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(arg_0.x)))), _wgslsmith_f_op_f32(-arg_0.x)), u_input.e.xx, ~(~u_input.e.xzz)), Struct_2(_wgslsmith_div_vec2_f32(global3.c.xz, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-656f, 1707f), global3.c.xz, global0[_wgslsmith_index_u32(u_input.e.x, 3u)]))))), firstTrailingBit(vec2<i32>(1i, i32(-1i) * -2147483647i)), _wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, global2[_wgslsmith_index_u32(4294967295u, 16u)]), arg_2.wx), arg_1))), Struct_1(vec4<u32>(~firstLeadingBit(u_input.a), abs(global3.e.x), select(4294967295u, _wgslsmith_clamp_u32(global3.e.x, 4294967295u, 28906u), true), ~reverseBits(36294u)), global3.b, _wgslsmith_f_op_vec3_f32(global3.c + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.x, arg_0.x, -214f)))), u_input.e.xx, ~(~global3.a.xxz)));
    var var_1 = _wgslsmith_clamp_i32(reverseBits(var_0.b.b.x), reverseBits(_wgslsmith_dot_vec4_i32(-min(arg_2, vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(var_0.a.a.x, 16u)], var_0.b.c, 2147483647i)), arg_2 ^ arg_2)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(i32(-1i) * -1i, arg_2.x), -2147483647i));
    global0 = array<bool, 3>();
    let var_2 = all(vec3<bool>(global3.b, true, true));
    return var_0.c.e;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec3_u32(func_2(_wgslsmith_f_op_vec2_f32(trunc(global3.c.xx)), vec2<i32>(global2[_wgslsmith_index_u32(u_input.e.x, 16u)], _wgslsmith_dot_vec2_i32(-u_input.c.yz, _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -86671i), vec2<i32>(-13594i, 23574i), u_input.d.zy))), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(global2[_wgslsmith_index_u32(global3.a.x, 16u)], u_input.b, u_input.b, u_input.c.x)), firstLeadingBit(vec4<i32>(-1i, -2147483647i, global2[_wgslsmith_index_u32(4294967295u, 16u)], u_input.c.x))), vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(4294967295u, 16u)], -6038i, _wgslsmith_mod_i32(u_input.d.x, 19296i)))), vec3<u32>(u_input.a, u_input.a, ~(~(~4294967295u))));
    var var_1 = ~var_0.x >> (15696u % 32u);
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.x, global3.c.x, global3.c.x, -405f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.c.x, global3.c.x, global3.c.x, 547f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1515f, -845f, 913f, 112f) * vec4<f32>(-1082f, global3.c.x, global3.c.x, -797f))))) * vec4<f32>(global3.c.x, -672f, 1115f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global3.c.x)), _wgslsmith_f_op_f32(abs(852f)))))));
    let var_3 = Struct_2(var_2.wx, reverseBits(vec2<i32>(i32(-1i) * -37377i, -u_input.d.x)), _wgslsmith_add_i32(~reverseBits(abs(global2[_wgslsmith_index_u32(var_0.x, 16u)])), _wgslsmith_add_i32(select(-1i, global2[_wgslsmith_index_u32(u_input.e.x, 16u)] | 0i, global0[_wgslsmith_index_u32(u_input.e.x, 3u)]), firstLeadingBit(u_input.d.x))));
    let var_4 = vec2<bool>(true, true);
    return Struct_1(vec4<u32>(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global3.c.zx, var_2.wy)), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(4487i, 742i), vec2<i32>(35018i, 44329i))), vec4<i32>(-global2[_wgslsmith_index_u32(global3.e.x, 16u)], ~var_3.b.x, -1857i, 2147483647i)).x, firstTrailingBit(35094u), ~_wgslsmith_mult_u32(var_0.x, ~0u), 68u), global3.b, _wgslsmith_f_op_vec3_f32(global3.c * global3.c), vec2<u32>(_wgslsmith_add_u32(u_input.a, var_0.x), 1u), _wgslsmith_clamp_vec3_u32(var_0, ~_wgslsmith_div_vec3_u32(vec3<u32>(14367u, var_0.x, 1u) >> (vec3<u32>(u_input.e.x, 149802u, 38499u) % vec3<u32>(32u)), u_input.e.zzw), vec3<u32>(7784u, 23770u, firstTrailingBit(_wgslsmith_div_u32(1u, 53629u)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    var var_0 = select(select(vec4<bool>(!(false == global3.b), !(arg_1.a.e.x == 57078u), true, !(true | global3.b)), !(!(!vec4<bool>(arg_0.b, false, global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(60076u, 3u)]))), !(!(!vec4<bool>(arg_1.c.b, arg_0.b, true, global3.b)))), !select(vec4<bool>(all(vec2<bool>(false, global0[_wgslsmith_index_u32(global3.d.x, 3u)])), arg_0.b, true, !global0[_wgslsmith_index_u32(16063u, 3u)]), !vec4<bool>(false, false, true, global3.b), vec4<bool>(true, any(vec3<bool>(false, arg_1.a.b, true)), any(vec2<bool>(false, true)), arg_0.b)), select(select(vec4<bool>(false, all(vec3<bool>(true, false, true)), true, global0[_wgslsmith_index_u32(86373u, 3u)] & global0[_wgslsmith_index_u32(1u, 3u)]), !select(vec4<bool>(true, false, false, false), vec4<bool>(arg_0.b, global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], true), vec4<bool>(false, arg_1.a.b, false, global0[_wgslsmith_index_u32(4294967295u, 3u)])), vec4<bool>(any(vec4<bool>(arg_0.b, true, false, global0[_wgslsmith_index_u32(arg_1.a.a.x, 3u)])), -2147483647i != arg_1.b.c, func_1().b, arg_0.b)), select(select(vec4<bool>(global0[_wgslsmith_index_u32(31239u, 3u)], false, true, arg_1.a.b), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(60993u, 3u)], arg_1.a.b), vec4<bool>(arg_1.a.b, arg_1.c.b, false, arg_0.b), vec4<bool>(arg_1.c.b, false, false, false)), !vec4<bool>(arg_1.a.b, global3.b, false, false)), select(select(vec4<bool>(arg_0.b, false, false, true), vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.a.x, 3u)], arg_1.a.b, true), false), !vec4<bool>(global0[_wgslsmith_index_u32(arg_0.d.x, 3u)], true, false, true), true), vec4<bool>(!arg_0.b, true, any(vec2<bool>(true, false)), arg_0.b)), global0[_wgslsmith_index_u32(~37180u, 3u)]));
    let var_1 = arg_1.b;
    var var_2 = all(var_0.yx);
    let var_3 = select(select(var_0.xw, !var_0.ww, select(vec2<bool>(true, true), vec2<bool>(global3.b, true && global3.b), var_0.xz)), select(select(!select(vec2<bool>(global0[_wgslsmith_index_u32(39604u, 3u)], global3.b), var_0.zx, var_0.zw), select(!var_0.xy, !vec2<bool>(global0[_wgslsmith_index_u32(69814u, 3u)], var_0.x), all(vec4<bool>(false, false, true, true))), vec2<bool>(var_0.x, all(vec4<bool>(false, true, false, false)))), vec2<bool>(!(13506u < arg_0.d.x), false), global3.c.x >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(864f, var_1.a.x)), _wgslsmith_f_op_f32(477f + 1081f)))), !select(var_0.xx, var_0.zz, !vec2<bool>(arg_0.b, true)));
    var var_4 = func_1();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_4(func_1(), Struct_3(Struct_1(u_input.e, global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a, 20026u), 3u)], vec3<f32>(global3.c.x, 976f, global3.c.x), _wgslsmith_mod_vec2_u32(u_input.e.zz, global3.d) << (abs(u_input.e.ww) % vec2<u32>(32u)), max(vec3<u32>(95945u, 1u, 4294967295u), global3.a.www)), Struct_2(_wgslsmith_f_op_vec2_f32(sign(global3.c.zy)), firstTrailingBit(-vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 16u)], 29782i)), global2[_wgslsmith_index_u32(u_input.a, 16u)]), Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, 8656u) >> (global3.a % vec4<u32>(32u)), select(u_input.e, vec4<u32>(4294967295u, u_input.a, 93059u, global3.e.x), true)), all(vec4<bool>(global0[_wgslsmith_index_u32(60664u, 3u)], false, global3.b, global3.b)) == !global0[_wgslsmith_index_u32(u_input.a, 3u)], _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global3.c))), global3.d, ~(u_input.e.zzw << (u_input.e.zwy % vec3<u32>(32u))))));
    var var_0 = vec3<u32>(firstTrailingBit(global3.d.x), 1u, _wgslsmith_clamp_u32(global3.e.x, global3.e.x, abs(1505u)));
    global1 = ~var_0.x;
    var_0 = ~_wgslsmith_mod_vec3_u32(u_input.e.yyw, u_input.e.wwy) | firstLeadingBit(~vec3<u32>(u_input.a & var_0.x, var_0.x, 2476u));
    var var_1 = Struct_3(func_4(Struct_1(_wgslsmith_mod_vec4_u32(global3.a, ~vec4<u32>(var_0.x, 1u, 54968u, 49125u)), global3.e.x < global3.d.x, global3.c, var_0.xx, u_input.e.xyx), Struct_3(Struct_1(_wgslsmith_mod_vec4_u32(u_input.e, vec4<u32>(39950u, u_input.a, var_0.x, var_0.x)), true, _wgslsmith_div_vec3_f32(global3.c, vec3<f32>(global3.c.x, 1019f, -502f)), var_0.xx, func_2(vec2<f32>(global3.c.x, 1124f), vec2<i32>(u_input.d.x, u_input.d.x), vec4<i32>(0i, u_input.b, -1i, 11641i))), Struct_2(_wgslsmith_f_op_vec2_f32(select(global3.c.xy, global3.c.xx, vec2<bool>(global3.b, true))), select(u_input.c.yx, vec2<i32>(-37400i, global2[_wgslsmith_index_u32(var_0.x, 16u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 3u)], false)), _wgslsmith_mult_i32(1317i, -8268i)), Struct_1(countOneBits(vec4<u32>(u_input.a, 1u, 0u, 4294967295u)), false, _wgslsmith_f_op_vec3_f32(-global3.c), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.e.x, 1u)), vec3<u32>(u_input.a, 0u, u_input.e.x)))), Struct_2(func_4(Struct_1(global3.a, true, vec3<f32>(152f, global3.c.x, global3.c.x), u_input.e.xy, min(vec3<u32>(u_input.e.x, 0u, 0u), vec3<u32>(global3.d.x, 34020u, 4294967295u))), Struct_3(func_1(), Struct_2(global3.c.yy, u_input.c.xx, global2[_wgslsmith_index_u32(var_0.x, 16u)]), func_4(Struct_1(vec4<u32>(u_input.e.x, 29031u, 83151u, 71449u), global0[_wgslsmith_index_u32(1u, 3u)], global3.c, vec2<u32>(global3.d.x, 51793u), vec3<u32>(37443u, 17584u, 46699u)), Struct_3(Struct_1(vec4<u32>(global3.e.x, 33214u, 0u, 0u), true, vec3<f32>(-644f, 1089f, global3.c.x), u_input.e.ww, vec3<u32>(var_0.x, 1u, 1u)), Struct_2(vec2<f32>(-363f, 898f), vec2<i32>(19204i, u_input.b), global2[_wgslsmith_index_u32(4294967295u, 16u)]), Struct_1(vec4<u32>(global3.e.x, 79810u, global3.a.x, u_input.e.x), global3.b, vec3<f32>(1900f, 1416f, global3.c.x), var_0.zz, vec3<u32>(var_0.x, u_input.a, 6352u)))))).c.zy, _wgslsmith_clamp_vec2_i32(-u_input.c.xz, select(u_input.c.zz, vec2<i32>(1i, -1i), global0[_wgslsmith_index_u32(global3.e.x, 3u)]), ~u_input.c.yx) ^ u_input.d.xz, _wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, u_input.b), 12625i))), Struct_1(vec4<u32>(var_0.x, ~(~41788u), var_0.x, ~_wgslsmith_add_u32(16751u, 1u)), false, func_1().c, func_2(func_1().c.xy, min(abs(u_input.c.zx), vec2<i32>(u_input.c.x, 56626i)), vec4<i32>(-31175i, countOneBits(-13134i), ~u_input.b, -2147483647i)).xz, vec3<u32>(u_input.e.x, global3.d.x, 41397u)));
    let var_2 = select(false, false, true);
    var var_3 = var_1.b;
    var_3 = var_1.b;
    var var_4 = abs(global3.e);
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(9817i ^ global2[_wgslsmith_index_u32(var_4.x, 16u)]), _wgslsmith_add_u32(u_input.a, 0u), u_input.d, ~3493i);
}

