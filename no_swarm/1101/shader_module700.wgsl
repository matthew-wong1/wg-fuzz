struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 28>;

var<private> global1: array<vec3<bool>, 24>;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: array<u32, 18> = array<u32, 18>(1u, 1u, 1u, 16746u, 4294967295u, 0u, 23213u, 4294967295u, 53873u, 0u, 48991u, 0u, 68645u, 23468u, 81853u, 13584u, 1u, 22336u);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    global2 = vec2<bool>(false, true);
    global2 = !(!(!select(vec2<bool>(true, global2.x), !vec2<bool>(global2.x, false), vec2<bool>(global2.x, global2.x))));
    global2 = select(vec2<bool>(true, _wgslsmith_f_op_f32(trunc(2563f)) >= _wgslsmith_f_op_f32(sign(1619f))), vec2<bool>(true, !select(arg_0, true, all(vec4<bool>(global2.x, false, arg_0, global2.x)))), vec2<bool>(global2.x, global2.x));
    let var_0 = all(!vec4<bool>(true, global2.x, false, true));
    let var_1 = vec2<i32>(_wgslsmith_mod_i32(2147483647i, max(abs(-2147483647i), -1i)), u_input.a);
    return vec4<bool>(((global3[_wgslsmith_index_u32(~55656u, 18u)] >> (_wgslsmith_mod_u32(4294967295u, 4294967295u) % 32u)) >> (_wgslsmith_clamp_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 18u)], 18u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(146043u, 18u)], 18u)], 18u)], 18u)], 18u)], ~56020u) % 32u)) < global3[_wgslsmith_index_u32(73201u, 18u)], true, all(vec4<bool>(!arg_0 != false, true, (arg_0 | arg_0) == true, global2.x)), u_input.b.x > -2147483647i);
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: f32, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(u_input.b, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 18u)], 18u)], 1u), max(vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(36367u, 18u)], 18u)]), vec2<u32>(40218u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(3661u, 18u)], 18u)])), !arg_1), abs(vec2<u32>(global3[_wgslsmith_index_u32(6193u, 18u)], 4294967295u) | vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32909u, 18u)], 18u)], 49803u))), 28u)]), Struct_1(vec2<i32>(abs(_wgslsmith_mod_i32(6245i, arg_0)), _wgslsmith_div_i32(u_input.a, u_input.b.x)), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(29252u, 18u)], 28u)]), select(global1[_wgslsmith_index_u32(~0u, 24u)], !global1[_wgslsmith_index_u32(31619u, 24u)], !arg_1), !(!func_3(true)));
    let var_1 = Struct_1(var_0.a.a, var_0.b.b);
    let var_2 = Struct_1(vec2<i32>(~_wgslsmith_mod_i32(~19487i, _wgslsmith_dot_vec2_i32(var_0.b.a, vec2<i32>(var_0.a.a.x, var_1.a.x))), select(~(-var_0.b.a.x), _wgslsmith_mult_i32(var_0.b.a.x | arg_0, min(arg_0, -48122i)), any(func_3(global2.x).zyx))), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(countOneBits(0u), global3[_wgslsmith_index_u32(var_1.b.x, 18u)]), 28u)]);
    let var_3 = ~var_1.b.x;
    let var_4 = var_3;
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(692f + 1818f), _wgslsmith_f_op_f32(1466f + -786f), _wgslsmith_f_op_f32(f32(-1f) * -1287f), _wgslsmith_f_op_f32(1713f * 1852f)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -514f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1882f, 242f))), _wgslsmith_f_op_f32(sign(567f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(141f, 1386f)) - 1386f)))));
    var var_1 = reverseBits(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, arg_0.a.x, arg_1.a.x) << (vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(45700u, 18u)], 18u)], 1u, arg_0.b.x) % vec3<u32>(32u))) | max(~vec3<i32>(arg_2.a.x, arg_1.a.x, u_input.b.x), -vec3<i32>(1i, arg_2.a.x, -1i)), ~(~_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.a.x, arg_2.a.x, arg_0.a.x), vec3<i32>(arg_0.a.x, -45580i, arg_0.a.x)))));
    let var_2 = Struct_1(abs(~arg_1.a), ~select(~_wgslsmith_div_vec3_u32(vec3<u32>(64839u, arg_0.b.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(48697u, 18u)], 18u)], 18u)]), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_2.b.x, 18u)], 18u)], 10105u, 4294967295u)), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(arg_2.b, vec3<u32>(arg_0.b.x, arg_2.b.x, 0u)), ~vec3<u32>(55926u, 4294967295u, 1u)), func_3(global2.x).x));
    var var_3 = vec4<f32>(-916f, var_0.x, _wgslsmith_f_op_f32(min(-482f, 208f)), var_0.x);
    let var_4 = var_0.x;
    return Struct_2(arg_1, arg_0, vec3<bool>(any(!vec4<bool>(global2.x, global2.x, global2.x, global2.x)), (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~arg_2.b.x, 18u)], 18u)] ^ ~arg_1.b.x) >= (_wgslsmith_dot_vec2_u32(arg_0.b.xx, vec2<u32>(arg_2.b.x, 1u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.x, arg_0.b.x, 10585u, 65931u), vec4<u32>(arg_1.b.x, 35556u, 4294967295u, var_2.b.x)) % 32u)), !(-8127i > min(var_1.x, -1i))), vec4<bool>(global2.x, all(select(select(global1[_wgslsmith_index_u32(arg_2.b.x, 24u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.b.x, 18u)], 24u)], global1[_wgslsmith_index_u32(arg_2.b.x, 24u)]), func_3(true).zxx, !vec3<bool>(true, global2.x, global2.x))), global2.x, all(!vec3<bool>(global2.x, global2.x, global2.x))));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = 1536f <= _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1000f, -150f, false)))), _wgslsmith_f_op_f32(round(-2378f)))));
    var var_1 = ~_wgslsmith_mod_vec2_i32(~arg_0.a.a << (vec2<u32>(11424u, global3[_wgslsmith_index_u32(1u, 18u)]) % vec2<u32>(32u)), select(-_wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, -1i)), reverseBits(func_4(Struct_1(vec2<i32>(arg_0.b.a.x, 1i), vec3<u32>(44744u, 5157u, global3[_wgslsmith_index_u32(1u, 18u)])), Struct_1(u_input.b, vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 18u)], 18u)], 4142u, global3[_wgslsmith_index_u32(4379u, 18u)])), arg_0.b).b.a), select(select(arg_0.c.yz, arg_0.d.xy, vec2<bool>(arg_0.d.x, arg_0.d.x)), vec2<bool>(false, global2.x), arg_0.c.x)));
    var var_2 = func_4(Struct_1(select(firstTrailingBit(u_input.b), arg_0.b.a, vec2<bool>(any(vec4<bool>(var_0, arg_0.d.x, arg_0.c.x, false)), false)), min(reverseBits(_wgslsmith_add_vec3_u32(arg_0.b.b, global0[_wgslsmith_index_u32(26130u, 28u)])), global0[_wgslsmith_index_u32(countOneBits(~global3[_wgslsmith_index_u32(arg_0.b.b.x, 18u)]), 28u)])), Struct_1(select(vec2<i32>(~2147483647i, select(u_input.b.x, 2147483647i, var_0)), vec2<i32>(18214i, 2147483647i) ^ ~vec2<i32>(arg_0.a.a.x, arg_0.a.a.x), func_3(arg_0.c.x).yz), global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(vec2<u32>(88716u, 4165u), arg_0.a.b.yx) & arg_0.a.b.x), 28u)]), arg_0.a);
    let var_3 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(~min(global3[_wgslsmith_index_u32(var_2.b.b.x, 18u)], 14686u), 69222u, 1620u, var_2.b.b.x), _wgslsmith_add_vec4_u32(~firstLeadingBit(vec4<u32>(arg_0.b.b.x, 0u, global3[_wgslsmith_index_u32(29943u, 18u)], arg_0.b.b.x)), _wgslsmith_div_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(var_2.a.b.x, 18u)], var_2.b.b.x, 4294967295u, 4294967295u), abs(vec4<u32>(arg_0.a.b.x, global3[_wgslsmith_index_u32(var_2.a.b.x, 18u)], var_2.b.b.x, 4294967295u)))));
    return arg_0.b;
}

fn func_1(arg_0: f32) -> vec3<u32> {
    let var_0 = func_5(func_4(func_2(1i, any(select(vec4<bool>(false, true, global2.x, global2.x), vec4<bool>(false, global2.x, false, global2.x), global2.x)), -422f, _wgslsmith_f_op_f32(-736f + _wgslsmith_f_op_f32(min(216f, arg_0)))), Struct_1(-u_input.b, _wgslsmith_sub_vec3_u32(~global0[_wgslsmith_index_u32(25071u, 28u)], vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 4294967295u, 0u))), func_2(~_wgslsmith_mod_i32(u_input.a, u_input.b.x), any(select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(true, false, global2.x), global2.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1055f), _wgslsmith_f_op_f32(trunc(arg_0)), false)), _wgslsmith_f_op_f32(f32(-1f) * -549f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2623f, _wgslsmith_f_op_f32(ceil(-455f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-734f, arg_0) - vec2<f32>(arg_0, arg_0)) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-521f, arg_0)))))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), 591f) + vec2<f32>(-366f, -868f)))));
    var var_2 = var_0;
    var var_3 = all(vec2<bool>(false, all(!func_3(global2.x).wy)));
    let var_4 = ~vec4<u32>(~var_2.b.x, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, abs(81531u), _wgslsmith_div_u32(global3[_wgslsmith_index_u32(var_2.b.x, 18u)], 4294967295u), ~var_2.b.x), select(vec4<u32>(52832u, global3[_wgslsmith_index_u32(9663u, 18u)], global3[_wgslsmith_index_u32(32660u, 18u)], 14573u), vec4<u32>(0u, 7916u, 16148u, 77621u), true) >> (~vec4<u32>(global3[_wgslsmith_index_u32(var_0.b.x, 18u)], 0u, var_0.b.x, var_2.b.x) % vec4<u32>(32u))), ~firstLeadingBit(~var_0.b.x));
    return _wgslsmith_add_vec3_u32(var_2.b & func_2(u_input.b.x, !(-209f == var_1.x), -562f, -916f).b, vec3<u32>(var_4.x, 24497u, 4294967295u));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    global3 = array<u32, 18>();
    return -43028i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 24>();
    global1 = array<vec3<bool>, 24>();
    var var_0 = min(func_6(Struct_2(Struct_1(_wgslsmith_clamp_vec2_i32(u_input.b, vec2<i32>(u_input.a, u_input.b.x), u_input.b), vec3<u32>(0u, global3[_wgslsmith_index_u32(1u, 18u)], global3[_wgslsmith_index_u32(16797u, 18u)])), Struct_1(vec2<i32>(-45353i, 1i), func_1(537f)), vec3<bool>(all(vec4<bool>(global2.x, false, true, global2.x)), global2.x | global2.x, global3[_wgslsmith_index_u32(0u, 18u)] >= 1u), !vec4<bool>(global2.x, global2.x, false, false)), Struct_2(func_5(Struct_2(Struct_1(u_input.b, vec3<u32>(4294967295u, 2635u, global3[_wgslsmith_index_u32(91608u, 18u)])), Struct_1(u_input.b, vec3<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], global3[_wgslsmith_index_u32(39575u, 18u)])), global1[_wgslsmith_index_u32(31234u, 24u)], vec4<bool>(false, global2.x, global2.x, false))), Struct_1(abs(vec2<i32>(u_input.b.x, u_input.b.x)), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 18u)], 28u)]), global1[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(6958u >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 18u)] % 32u), 18u)], 24u)], !func_3(global2.x))), ~u_input.b.x);
    let var_1 = func_2(firstLeadingBit(u_input.a), all(!select(!vec4<bool>(true, false, global2.x, global2.x), !vec4<bool>(false, true, global2.x, true), func_3(false))), _wgslsmith_f_op_f32(f32(-1f) * -405f), -357f);
    let var_2 = ~14779u;
    var var_3 = Struct_1(u_input.b, countOneBits(firstTrailingBit(var_1.b)));
    var var_4 = func_2(u_input.a, !(!any(vec4<bool>(global2.x, global2.x, true, global2.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1143f * -301f)))), -1092f).a | vec2<i32>(var_1.a.x, i32(-1i) * -func_2(4065i, true, 1000f, 418f).a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-847f, 314f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(662f, -1000f) - vec2<f32>(-217f, 1202f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-598f, 556f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-122f, 1000f), vec2<f32>(-1104f, -463f), global2.x)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(996f - -148f), -677f)), global2.x)), var_3.b.x, max(~select(vec4<u32>(global3[_wgslsmith_index_u32(1u, 18u)], 4294967295u, 0u, 3211u), vec4<u32>(var_3.b.x, var_1.b.x, var_2, 0u), vec4<bool>(true, global2.x, global2.x, global2.x)), vec4<u32>(1u, var_3.b.x, var_3.b.x, var_3.b.x) & firstLeadingBit(vec4<u32>(1u, global3[_wgslsmith_index_u32(46459u, 18u)], var_2, global3[_wgslsmith_index_u32(var_2, 18u)]))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(~26461u, ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2, 4294967295u), vec2<u32>(var_3.b.x, 1u)), ~var_3.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(41591u, var_3.b.x, 1701u, 0u) & vec4<u32>(1u, var_1.b.x, 122353u, var_2), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(27341u, 18u)], 18u)], 63455u), vec4<u32>(1u, var_1.b.x, var_1.b.x, var_1.b.x), vec4<u32>(0u, 12880u, 36499u, 0u))), vec4<u32>(56994u, 1u, 1u, 1u)) % vec4<u32>(32u)), -_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_4.x, -2147483647i, u_input.b.x, var_3.a.x), vec4<i32>(u_input.b.x, 27913i, 2147483647i, u_input.b.x), vec4<i32>(-2147483647i, var_3.a.x, var_4.x, -43759i)), ~vec4<i32>(var_4.x, var_3.a.x, var_3.a.x, var_1.a.x)), firstLeadingBit(abs(vec4<i32>(var_1.a.x, var_3.a.x, -1i, -2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1192f))))));
}

