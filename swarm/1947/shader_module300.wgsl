struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<Struct_2, 12>;

var<private> global2: Struct_2;

var<private> global3: Struct_1 = Struct_1(vec3<i32>(-1i, -43089i, 2147483647i), vec3<f32>(-1145f, -728f, 660f), 6328u, vec4<i32>(-3506i, 0i, 344i, -27406i), vec2<bool>(false, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: vec3<i32>) -> i32 {
    let var_0 = ~vec2<i32>(5410i, -global3.d.x);
    global1 = array<Struct_2, 12>();
    let var_1 = !vec4<bool>(any(select(select(vec4<bool>(false, global3.e.x, false, true), vec4<bool>(global0.x, global3.e.x, true, global3.e.x), false), !vec4<bool>(global0.x, false, global2.a.e.x, false), true)), true, all(select(!vec4<bool>(true, global0.x, global2.d.e.x, global0.x), !vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(global3.e.x, false, true, false))), true);
    var var_2 = 27879u;
    let var_3 = global1[_wgslsmith_index_u32(max(1u, global3.c), 12u)];
    return 12625i;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1005f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(1242f + -925f)), -1143f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1852f, 697f)))) != 425f)) + arg_2.a.b.x);
    let var_2 = Struct_2(var_0.a, -_wgslsmith_dot_vec3_i32(-var_0.d.a, vec3<i32>(global3.a.x, 127498i, var_0.a.a.x)), _wgslsmith_div_vec3_i32(vec3<i32>(func_3(vec2<u32>(global2.a.c, 14925u), var_0.d.b.x, global2.a.a), _wgslsmith_div_i32(var_0.d.a.x, min(11946i, global2.d.d.x)), ~(-18646i)), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.a.d.x, -2147483647i, arg_1.c.x), vec3<i32>(2147483647i, -1508i, global2.d.a.x)) & global2.a.a, _wgslsmith_sub_vec3_i32(max(arg_2.d.d.xww, arg_1.d.a), arg_2.a.d.wwy))), global2.d);
    var var_3 = Struct_2(var_2.d, ~1i, firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(1i, -1i), -global2.b), -14184i, ~select(u_input.c.x, var_2.a.d.x, false))), global2.d);
    var var_4 = vec3<bool>(false, !(var_3.a.e.x || var_3.d.e.x), !global0.x);
    return (select(40128u, ~8045u, true) | arg_1.d.c) >> (1u % 32u);
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = global2.d;
    var var_1 = Struct_1(abs(vec3<i32>(func_3(u_input.b, 2446f, global3.d.xxy) >> (_wgslsmith_div_u32(1u, 7268u) % 32u), global3.a.x, max(27952i, -1i))), _wgslsmith_f_op_vec3_f32(arg_1.xxz - var_0.b), arg_0, vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(arg_2, vec3<i32>(global3.d.x, var_0.d.x, 0i)), reverseBits(arg_2)) ^ 11062i, -43554i, -2147483647i, i32(-1i) * -2147483647i), var_0.e);
    let var_2 = var_1.b;
    var var_3 = arg_2;
    var var_4 = !(!(!vec3<bool>(false, var_1.e.x, true)));
    return global2.d;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -598f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.b.x, arg_1.d.b.x, arg_0.a.e.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -922f))), global3.b.x, select(!arg_0.a.e.x, false, true)))));
    var var_1 = vec4<u32>(global3.c, 12152u, firstLeadingBit(func_2(global2.a.b.yz, Struct_2(func_4(global2.a.c, vec4<f32>(840f, arg_1.a.b.x, 302f, arg_0.a.b.x), global3.a, vec4<u32>(12816u, global3.c, 4294967295u, u_input.b.x)), 14868i, _wgslsmith_add_vec3_i32(global3.a, vec3<i32>(global2.c.x, arg_0.c.x, 6000i)), func_4(arg_1.d.c, vec4<f32>(984f, 1000f, 667f, arg_0.a.b.x), global3.a, vec4<u32>(u_input.b.x, arg_0.a.c, 29565u, 0u))), Struct_2(Struct_1(arg_1.d.d.yxz, vec3<f32>(global2.d.b.x, arg_1.a.b.x, -828f), global3.c, vec4<i32>(-2076i, -1i, 1i, global3.d.x), vec2<bool>(false, false)), global2.a.a.x << (4294967295u % 32u), vec3<i32>(global3.a.x, 2661i, arg_0.d.d.x), arg_0.d))), ~max(1u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, global2.d.c), vec2<u32>(arg_2.x, 62727u), arg_0.a.e.x), select(vec2<u32>(1u, arg_1.a.c), vec2<u32>(0u, global3.c), true))));
    var var_2 = Struct_1(-_wgslsmith_add_vec3_i32(global3.a, vec3<i32>(-23978i, _wgslsmith_div_i32(22517i, 62876i), countOneBits(arg_0.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.b)), arg_1.a.c ^ 20825u, arg_0.a.d, arg_1.d.e);
    let var_3 = vec3<i32>(-1i, global3.d.x, func_4(~(arg_1.a.c >> (var_2.c % 32u)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1228f), 822f, _wgslsmith_f_op_f32(trunc(global3.b.x)), _wgslsmith_f_op_f32(-arg_0.a.b.x)))), arg_0.c & _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(global3.d.ywx, global3.a), select(vec3<i32>(-1i, -1i, -2147483647i), vec3<i32>(arg_0.c.x, 40217i, arg_0.b), arg_1.a.e.x)), _wgslsmith_mod_vec4_u32(arg_2, reverseBits(vec4<u32>(24440u, var_1.x, var_2.c, 22316u)) & vec4<u32>(var_2.c, arg_2.x, 0u, 0u))).a.x);
    let var_4 = Struct_2(Struct_1(_wgslsmith_add_vec3_i32(reverseBits(-vec3<i32>(arg_0.a.a.x, var_3.x, -1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_3.x, global2.b, -14934i), global2.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.d.b))), abs(var_1.x), ~countOneBits(arg_1.d.d), vec2<bool>(!all(vec3<bool>(global3.e.x, global2.d.e.x, false)), all(vec3<bool>(global0.x, global3.e.x, global0.x)) != global0.x)), u_input.c.x, var_2.d.wxy, func_4(arg_0.d.c, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1276f, _wgslsmith_f_op_f32(-global3.b.x), var_2.b.x, 1992f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1036f, -397f, -220f, 1403f), vec4<f32>(1000f, 2816f, global2.a.b.x, 1077f)))))), vec3<i32>(abs(arg_1.c.x) | _wgslsmith_dot_vec2_i32(global3.a.zx, vec2<i32>(-38534i, -2785i)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(0i, -1i), global2.c.x), ~(global2.b & -16602i)), vec4<u32>(1u << (~arg_2.x % 32u), _wgslsmith_dot_vec2_u32(~u_input.d, _wgslsmith_clamp_vec2_u32(vec2<u32>(49173u, global2.a.c), var_1.xy, var_1.zz)), _wgslsmith_sub_u32(arg_0.d.c, 1u), ~1u)));
    return Struct_2(arg_1.d, ~40505i, -arg_1.d.d.xwy, Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(var_3.x << (39812u % 32u), global2.d.d.x, -38343i), -global2.a.d.xxx), vec3<f32>(-507f, _wgslsmith_f_op_f32(min(var_2.b.x, _wgslsmith_f_op_f32(ceil(global3.b.x)))), 156f), ~firstTrailingBit(~65560u), _wgslsmith_mod_vec4_i32(vec4<i32>(~(-46899i), 0i >> (arg_2.x % 32u), var_3.x, min(1094i, -2147483647i)), -_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 1i, -1i, var_3.x), global2.a.d)), select(vec2<bool>(!global0.x, true), arg_1.a.e, select(vec2<bool>(false, global3.e.x), select(arg_1.a.e, vec2<bool>(true, var_4.d.e.x), vec2<bool>(arg_0.d.e.x, var_2.e.x)), global2.a.e))));
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = !vec3<bool>(global2.a.e.x, global2.d.c > global2.a.c, true);
    let var_1 = func_5(Struct_2(func_4(_wgslsmith_add_u32(64949u, global2.d.c) ^ func_2(global2.a.b.zz, global1[_wgslsmith_index_u32(global3.c, 12u)], Struct_2(global2.a, arg_0, vec3<i32>(arg_0, 2147483647i, u_input.c.x), Struct_1(global3.a, global2.a.b, global2.a.c, global2.d.d, var_0.zx))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -539f, global2.a.b.x, 1301f))), vec3<i32>(-1i) * -vec3<i32>(global2.c.x, -1i, 0i), firstLeadingBit(vec4<u32>(u_input.b.x, u_input.a, global2.a.c, global3.c) ^ vec4<u32>(global3.c, u_input.a, global2.a.c, 18041u))), 2147483647i, abs(_wgslsmith_clamp_vec3_i32(firstLeadingBit(global2.d.a), ~vec3<i32>(-14932i, u_input.c.x, -48819i), global3.a)), global2.d), global1[_wgslsmith_index_u32(0u, 12u)], _wgslsmith_add_vec4_u32(vec4<u32>(min(max(u_input.d.x, 47181u), 1u), 1u, ~global3.c, 32626u), _wgslsmith_div_vec4_u32(select(vec4<u32>(8178u, global2.d.c, 1u, 4294967295u), vec4<u32>(34460u, global3.c, 59101u, global3.c), vec4<bool>(global0.x, false, global2.d.e.x, true)), ~vec4<u32>(u_input.b.x, global2.d.c, u_input.a, 1u)) & _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, 153915u, global3.c), vec4<u32>(u_input.d.x, global3.c, u_input.b.x, 4294967295u)), ~vec4<u32>(16198u, 4294967295u, global2.a.c, 38707u))));
    var var_2 = _wgslsmith_f_op_vec2_f32(func_4((_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, global2.a.c, 0u), vec4<u32>(global2.a.c, 5154u, 1u, global2.a.c)) ^ 451u) >> (u_input.d.x % 32u), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global3.b.x)), _wgslsmith_f_op_f32(global2.a.b.x * global2.d.b.x)), func_5(func_5(global1[_wgslsmith_index_u32(4294967295u, 12u)], var_1, vec4<u32>(var_1.a.c, u_input.b.x, 0u, 3070u)), global1[_wgslsmith_index_u32(func_5(Struct_2(Struct_1(vec3<i32>(900i, 2147483647i, 2147483647i), var_1.a.b, global2.a.c, global2.d.d, vec2<bool>(var_0.x, true)), 2147483647i, global2.c, Struct_1(vec3<i32>(-1i, 19125i, var_1.b), vec3<f32>(-506f, -753f, var_1.a.b.x), 50170u, global3.d, global2.d.e)), Struct_2(var_1.d, -42436i, vec3<i32>(1i, arg_0, global2.c.x), Struct_1(vec3<i32>(0i, global2.c.x, -35771i), global2.a.b, global2.a.c, vec4<i32>(global3.a.x, arg_0, global3.a.x, arg_0), vec2<bool>(var_0.x, true))), vec4<u32>(16753u, global2.a.c, var_1.a.c, 4294967295u)).a.c, 12u)], ~vec4<u32>(global2.a.c, 53110u, 26533u, 4294967295u)).a.b.x, 1f, -684f), global2.c, _wgslsmith_mult_vec4_u32(~reverseBits(vec4<u32>(u_input.a, global3.c, global3.c, 0u)), ~(~vec4<u32>(global3.c, 4294967295u, 1u, 11779u)))).b.xy + global3.b.yz);
    global0 = global2.a.e;
    var var_3 = !(!select(!vec3<bool>(var_0.x, true, false), vec3<bool>(true, all(vec2<bool>(global3.e.x, var_0.x)), global3.e.x), _wgslsmith_f_op_f32(-global2.d.b.x) == _wgslsmith_f_op_f32(-global3.b.x)));
    return 25573u << (global2.d.c % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(_wgslsmith_mod_u32(4294967295u, 64179u), func_1(global3.d.x));
    let var_1 = _wgslsmith_f_op_f32(-global3.b.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2.a.b.x + global3.b.x), -874f) + global2.a.b.xz) * _wgslsmith_div_vec2_f32(global3.b.zz, _wgslsmith_f_op_vec2_f32(-func_4(global2.a.c, vec4<f32>(var_1, 979f, global2.a.b.x, global2.a.b.x), global2.c, vec4<u32>(9760u, global2.a.c, global2.a.c, var_0)).b.xz))) - global3.b.yx);
    let var_3 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(min(abs(vec4<u32>(1u, global3.c, global3.c, var_0)), _wgslsmith_add_vec4_u32(vec4<u32>(global3.c, 12811u, var_0, 55553u), vec4<u32>(20176u, global3.c, global3.c, global3.c))), vec4<u32>(_wgslsmith_add_u32(u_input.b.x, 6835u), 46433u, 1u, global2.a.c)), 1u);
    global0 = func_4(0u << (_wgslsmith_sub_u32(var_0, ~_wgslsmith_mult_u32(22119u, var_0)) % 32u), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-332f - -455f)), 359f)), _wgslsmith_f_op_f32(-var_2.x), func_4(4294967295u, vec4<f32>(func_4(global3.c, vec4<f32>(var_2.x, global2.d.b.x, 1327f, -506f), vec3<i32>(u_input.c.x, -16886i, u_input.c.x), vec4<u32>(u_input.b.x, 4294967295u, var_3, 1u)).b.x, _wgslsmith_f_op_f32(f32(-1f) * -138f), 519f, _wgslsmith_div_f32(global3.b.x, 804f)), global2.c, ~_wgslsmith_add_vec4_u32(vec4<u32>(var_0, 58819u, u_input.d.x, global3.c), vec4<u32>(var_0, var_0, u_input.a, global3.c))).b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(278f + _wgslsmith_f_op_f32(var_1 + -368f)) + global2.d.b.x)), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.c, global2.a.d.zz), ~func_5(func_5(Struct_2(Struct_1(vec3<i32>(-74573i, u_input.c.x, 19524i), vec3<f32>(758f, var_1, global2.d.b.x), 4294967295u, vec4<i32>(u_input.c.x, 1i, global2.a.a.x, -1i), vec2<bool>(global2.d.e.x, false)), 1i, global3.a, Struct_1(global3.a, vec3<f32>(global3.b.x, var_2.x, global3.b.x), 40412u, global2.d.d, global2.a.e)), Struct_2(Struct_1(global3.a, vec3<f32>(var_2.x, -1291f, global3.b.x), var_0, vec4<i32>(0i, 0i, global3.d.x, 0i), vec2<bool>(global2.d.e.x, true)), 2147483647i, vec3<i32>(global2.a.d.x, 0i, global3.a.x), global2.d), vec4<u32>(global3.c, var_3, var_3, 0u)), func_5(Struct_2(global2.a, 1i, global2.d.a, global2.a), global1[_wgslsmith_index_u32(global2.a.c, 12u)], vec4<u32>(61555u, 0u, 20995u, 59115u)), abs(vec4<u32>(2827u, 0u, global3.c, global3.c))).b, func_5(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, u_input.d.x), 12u)], func_5(global1[_wgslsmith_index_u32(global2.a.c, 12u)], func_5(Struct_2(Struct_1(global2.d.d.yyw, vec3<f32>(global2.d.b.x, global3.b.x, var_2.x), 1u, vec4<i32>(global3.d.x, global3.a.x, 5953i, global2.c.x), vec2<bool>(global0.x, global0.x)), 3581i, global2.d.a, Struct_1(global2.d.d.zxx, vec3<f32>(var_2.x, -916f, -586f), var_0, vec4<i32>(2147483647i, global2.c.x, 20260i, global2.b), global2.a.e)), Struct_2(global2.a, 39924i, vec3<i32>(global3.d.x, global3.a.x, 2147483647i), Struct_1(vec3<i32>(-2147483647i, 2147483647i, global3.d.x), vec3<f32>(var_1, var_1, 977f), 4294967295u, global3.d, global3.e)), vec4<u32>(58287u, 1u, 14790u, 623u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_0, var_0, 1u), vec4<u32>(var_0, global3.c, var_0, var_3), vec4<u32>(0u, 4294967295u, var_0, var_3))), vec4<u32>(~u_input.b.x, ~var_3, 0u & global3.c, ~0u)).b), ~firstTrailingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, global2.d.c, var_3, 36967u), vec4<u32>(var_3, 4294967295u, 14045u, 1u)))).e;
    let var_4 = global1[_wgslsmith_index_u32(var_0, 12u)];
    var_2 = global3.b.yz;
    let var_5 = u_input.a ^ var_0;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(reverseBits((global2.a.d | vec4<i32>(2147483647i, -24086i, 4208i, 0i)) | firstLeadingBit(global3.d))));
}

