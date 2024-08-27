struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

var<private> global1: vec4<i32> = vec4<i32>(72764i, -1i, 0i, -17918i);

var<private> global2: bool;

var<private> global3: Struct_4;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> i32 {
    global3 = Struct_4(!global3.a);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3, _wgslsmith_f_op_f32(-arg_2.c.x)))) - 302f) * _wgslsmith_f_op_f32(-arg_2.c.x));
    let var_1 = any(select(select(!global3.a, global3.a, all(select(global3.a, vec3<bool>(arg_2.a, global3.a.x, false), vec3<bool>(arg_1.c.x, true, true)))), !vec3<bool>(arg_2.a, arg_2.b, !global3.a.x), true));
    global3 = Struct_4(global3.a);
    let var_2 = vec4<u32>(u_input.b, max(arg_1.a.x, 1u), 0u ^ (countOneBits(u_input.b) << (_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(57023u, 40204u, arg_1.a.x)), vec3<u32>(arg_1.a.x, 17615u, u_input.b)) % 32u)), _wgslsmith_add_u32(abs(91222u), arg_1.a.x));
    return min(0i, _wgslsmith_dot_vec3_i32(~abs(vec3<i32>(arg_1.b, -34783i, global1.x) >> (vec3<u32>(u_input.b, var_2.x, 28166u) % vec3<u32>(32u))), firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, u_input.a, global1.x), vec4<i32>(arg_0, global1.x, -1i, -38911i)), -10067i, global0[_wgslsmith_index_u32(~21599u, 28u)]))));
}

fn func_2() -> vec4<i32> {
    global1 = ~vec4<i32>(func_3(_wgslsmith_add_i32(1i, global0[_wgslsmith_index_u32(u_input.b, 28u)]), Struct_2(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) | vec4<u32>(1u, 4294967295u, u_input.b, u_input.b), -1i, global3.a.zy, 1f), Struct_1(false, true, _wgslsmith_f_op_vec4_f32(vec4<f32>(2177f, -364f, 2738f, 486f) - vec4<f32>(812f, 1032f, 768f, -1000f)), global3.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(554f))))), global0[_wgslsmith_index_u32(28086u, 28u)], -_wgslsmith_dot_vec3_i32(global1.xxz ^ global1.xxw, global1.zzy), ~16732i);
    var var_0 = vec4<bool>(false, ~_wgslsmith_add_u32(~u_input.b, 1u) == (countOneBits(u_input.b) ^ ~u_input.b), global3.a.x, all(select(!(!global3.a.yy), !(!global3.a.zz), !(!vec2<bool>(false, global3.a.x)))));
    var var_1 = Struct_1(var_0.x, global3.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-706f, -1412f, 264f, -395f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-503f, -300f, 304f, -250f)))))), all(global3.a));
    let var_2 = Struct_4(var_0.zwy);
    let var_3 = _wgslsmith_mult_i32(0i, 12445i);
    return _wgslsmith_sub_vec4_i32(~(-((vec4<i32>(var_3, -20440i, -1i, 7516i) ^ vec4<i32>(-61053i, var_3, 2349i, -16065i)) << (firstLeadingBit(vec4<u32>(96669u, u_input.b, u_input.b, 0u)) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_i32(~_wgslsmith_div_vec4_i32(abs(vec4<i32>(global0[_wgslsmith_index_u32(0u, 28u)], u_input.a, 2147483647i, 37324i)), -vec4<i32>(u_input.a, -10855i, -25521i, 13730i)), firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b >> (u_input.b % 32u), 28u)], global0[_wgslsmith_index_u32(firstLeadingBit(27751u), 28u)], 0i, global1.x))));
}

fn func_1() -> vec3<u32> {
    var var_0 = reverseBits(_wgslsmith_sub_i32(max(-u_input.a, _wgslsmith_div_i32(global1.x, -8412i)), -2147483647i));
    global1 = ((_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -27799i, -1i, global0[_wgslsmith_index_u32(u_input.b, 28u)]), _wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -12087i, 36454i, global1.x))) >> (~vec4<u32>(u_input.b, u_input.b, u_input.b, 1u) % vec4<u32>(32u))) >> (vec4<u32>(u_input.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(34490u, u_input.b, u_input.b, 58106u), vec4<u32>(4294967295u, 0u, 0u, u_input.b)), max(u_input.b, ~1u), ~u_input.b) % vec4<u32>(32u))) | _wgslsmith_sub_vec4_i32(func_2(), ~firstTrailingBit(select(vec4<i32>(u_input.a, 1i, u_input.a, global1.x), vec4<i32>(23178i, global1.x, u_input.a, global1.x), false)));
    let var_1 = global3.a.zz;
    var var_2 = select(!vec4<bool>(false, true, true | var_1.x, global3.a.x | global3.a.x), !select(!(!vec4<bool>(var_1.x, var_1.x, global3.a.x, false)), select(select(vec4<bool>(true, false, global3.a.x, global3.a.x), vec4<bool>(true, global3.a.x, var_1.x, global3.a.x), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, global3.a.x, var_1.x, var_1.x), vec4<bool>(global3.a.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, false, global3.a.x, var_1.x)), select(true, var_1.x, false)), var_1.x), select(!(!(!vec4<bool>(global3.a.x, var_1.x, false, global3.a.x))), vec4<bool>(true, true, !var_1.x, select(true, !global3.a.x, global3.a.x && var_1.x)), !vec4<bool>(true, u_input.b != 51952u, global3.a.x, any(global3.a.xz))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(538f, -430f), _wgslsmith_f_op_f32(trunc(-616f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(762f, -927f), _wgslsmith_f_op_f32(-874f * 1084f), false)))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -759f) * -717f)))));
    return vec3<u32>(_wgslsmith_dot_vec4_u32(countOneBits(~(vec4<u32>(0u, 8039u, u_input.b, u_input.b) & vec4<u32>(u_input.b, u_input.b, 4294967295u, 13651u))), ~vec4<u32>(1u, 4294967295u << (u_input.b % 32u), ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)))), u_input.b, ~abs(0u));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec2<f32>, arg_3: vec3<u32>) -> StorageBuffer {
    var var_0 = vec3<i32>(max(~_wgslsmith_dot_vec3_i32(global1.wwy, firstTrailingBit(vec3<i32>(26519i, global1.x, global0[_wgslsmith_index_u32(1u, 28u)]))), -(i32(-1i) * -32931i)), -2147483647i, global1.x);
    global1 = vec4<i32>(-(~1i), _wgslsmith_dot_vec3_i32(func_2().yzz, vec3<i32>(1i, 69828i, 1i)), arg_0.c, var_0.x) ^ (vec4<i32>(-1i) * -(~(~vec4<i32>(var_0.x, 1i, -30082i, 1i))));
    global0 = array<i32, 28>();
    let var_1 = reverseBits(abs(_wgslsmith_mult_i32(1i << (arg_1 % 32u), ~1i))) | -2147483647i;
    let var_2 = ~_wgslsmith_add_u32(func_1().x, 1u);
    return StorageBuffer(_wgslsmith_add_i32(func_2().x, countOneBits(global1.x)), arg_2, ~max(select(-vec4<i32>(var_0.x, var_0.x, -2147483647i, 1i), -vec4<i32>(-25139i, -20049i, 2147483647i, global0[_wgslsmith_index_u32(arg_1, 28u)]), true), ~min(vec4<i32>(-74644i, 2147483647i, var_1, global0[_wgslsmith_index_u32(var_2, 28u)]), vec4<i32>(var_0.x, 1i, 13241i, -1i))), abs(_wgslsmith_dot_vec2_u32(arg_3.xz, firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.b.a.x, 20477u), vec2<u32>(4294967295u, 10356u))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_4(!global3.a);
    let x = u_input.a;
    s_output = func_4(Struct_3(~(min(vec3<u32>(14317u, u_input.b, u_input.b), vec3<u32>(u_input.b, 26557u, 1u)) & func_1()), Struct_2(~(~vec4<u32>(u_input.b, 4294967295u, 11443u, 1u)), func_3(~0i, Struct_2(vec4<u32>(u_input.b, 38212u, 0u, u_input.b), u_input.a, global3.a.xy, 718f), Struct_1(false, false, vec4<f32>(-1218f, 1298f, 863f, 209f), global3.a.x), 1f), vec2<bool>(!global3.a.x, !global3.a.x), 1f), ~(-global0[_wgslsmith_index_u32(1u, 28u)])), _wgslsmith_dot_vec4_u32(select(firstLeadingBit(max(vec4<u32>(4294967295u, u_input.b, 13686u, 91513u), vec4<u32>(u_input.b, u_input.b, u_input.b, 121692u))), ~vec4<u32>(1u, u_input.b, 8509u, 4294967295u), true), ~firstLeadingBit(vec4<u32>(u_input.b, u_input.b, 22667u, 15342u)) << (vec4<u32>(u_input.b | u_input.b, 4294967295u, _wgslsmith_div_u32(u_input.b, u_input.b), 42118u) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(916f, 1000f) * vec2<f32>(1113f, -2395f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-364f, 258f))), _wgslsmith_mult_u32(1u, 102372u) < _wgslsmith_dot_vec3_u32(vec3<u32>(41427u, 7430u, u_input.b), vec3<u32>(36096u, u_input.b, 1u)))))), ~(~vec3<u32>(u_input.b, 3793u, 46173u)));
}

