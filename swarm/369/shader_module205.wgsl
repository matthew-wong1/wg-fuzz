struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: Struct_3,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(i32(-2147483648), i32(-2147483648), 12960i, 40681i, 0i, -45331i, -1i, -7438i, 8586i, -24185i, 32529i, -29366i, 2147483647i, 1i, 62816i, -320i, i32(-2147483648), 7747i, -12759i, 2147483647i, i32(-2147483648), 2147483647i, -4577i, 52430i, 2147483647i, 15067i, -8185i, 0i, -14378i, i32(-2147483648), 0i);

var<private> global1: i32 = 25846i;

var<private> global2: array<bool, 16>;

var<private> global3: array<Struct_2, 29>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: vec4<i32>) -> u32 {
    let var_0 = Struct_3(_wgslsmith_add_vec3_u32(vec3<u32>(countOneBits(0u), 0u, u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(19396u, 0u, 4294967295u)), _wgslsmith_sub_u32(u_input.a, 13573u), 19646u), firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.a), vec3<u32>(57380u, u_input.a, 16142u))))));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1084f, -810f)))), true, Struct_3(vec3<u32>(reverseBits(reverseBits(59766u)), var_0.a.x, ~_wgslsmith_add_u32(37833u, var_0.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-482f + -1564f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(716f, 2612f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-737f, -300f))))));
    let var_2 = var_1.c.a.xz;
    return (1u >> ((reverseBits(_wgslsmith_div_u32(var_1.c.a.x, 4294967295u)) & 46546u) % 32u)) ^ select(abs(u_input.a), 91774u, (-898f > var_1.a) & true);
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    var var_0 = select(select(vec2<bool>(any(vec3<bool>(true, true, true)), !(!global2[_wgslsmith_index_u32(44952u, 16u)])), vec2<bool>(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(arg_3.b, arg_3.b), 16u)], true), false), vec2<bool>(select(true, any(select(vec3<bool>(global2[_wgslsmith_index_u32(arg_2.b, 16u)], global2[_wgslsmith_index_u32(arg_2.b, 16u)], true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 16u)], true, true), false)), !global2[_wgslsmith_index_u32(arg_3.b, 16u)]), true), vec2<bool>(global2[_wgslsmith_index_u32(arg_2.b, 16u)], any(!(!vec4<bool>(false, global2[_wgslsmith_index_u32(arg_3.b, 16u)], true, true)))));
    var var_1 = !vec2<bool>(any(vec2<bool>(var_0.x, var_0.x)), _wgslsmith_div_f32(936f, -1073f) != arg_1.x);
    var var_2 = ~(~(_wgslsmith_clamp_vec2_i32(vec2<i32>(19245i, arg_0), vec2<i32>(-20058i, -66769i), vec2<i32>(u_input.b, arg_0)) << (vec2<u32>(arg_3.b, u_input.a) % vec2<u32>(32u)))) >> (_wgslsmith_clamp_vec2_u32(abs(~(~vec2<u32>(4294967295u, 19552u))), vec2<u32>(1u, 1u) ^ firstLeadingBit(~vec2<u32>(u_input.a, 7403u)), ~(~(vec2<u32>(4294967295u, u_input.a) & vec2<u32>(1750u, arg_2.b)))) % vec2<u32>(32u));
    global1 = 23254i >> (u_input.a % 32u);
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -324f), arg_3.a.x, -1085f)), arg_2.b, _wgslsmith_f_op_f32(min(arg_2.a.x, arg_3.c)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, var_3.a.x), 1815f));
}

fn func_2(arg_0: u32) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(min(1i, _wgslsmith_mod_i32(1i, global0[_wgslsmith_index_u32(arg_0, 31u)])), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(388f, 239f), vec2<f32>(134f, 377f), vec2<bool>(global2[_wgslsmith_index_u32(117781u, 16u)], false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-119f, -612f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1591f, 478f), vec2<f32>(-1304f, 1036f), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 16u)], false))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(471f, -404f))))), global3[_wgslsmith_index_u32(func_3(vec2<bool>(false, true), false, ~(-vec4<i32>(u_input.b, u_input.b, global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(arg_0, 31u)]))), 29u)], Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-299f, -638f, 2188f) - vec3<f32>(233f, -422f, -148f))), 4294967295u, 742f))) + _wgslsmith_f_op_f32(-1f));
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-856f)), _wgslsmith_f_op_f32(1107f - -2386f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-304f)))))));
    global1 = global0[_wgslsmith_index_u32(~(~(~_wgslsmith_div_u32(u_input.a, ~43221u))), 31u)];
    let var_1 = global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(~min(vec4<u32>(arg_0, arg_0, arg_0, 20919u), ~vec4<u32>(arg_0, u_input.a, 85688u, arg_0)), min(_wgslsmith_mod_vec4_u32(vec4<u32>(68821u, 64656u, arg_0, 1u), vec4<u32>(28194u, 1u, 29104u, 4294967295u)), vec4<u32>(~44184u, arg_0, u_input.a, select(arg_0, 90730u, global2[_wgslsmith_index_u32(arg_0, 16u)]))))), 29u)];
    let var_2 = ~countOneBits(firstTrailingBit(~(~vec2<u32>(u_input.a, 0u))));
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.a.x, _wgslsmith_f_op_f32(func_4(u_input.b, var_1.a, global3[_wgslsmith_index_u32(5602u, 29u)], Struct_1(vec3<f32>(var_1.a.x, -461f, var_1.a.x), arg_0, -452f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))), false, Struct_3(reverseBits(~(~vec3<u32>(u_input.a, 94667u, var_2.x)))), vec3<f32>(575f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a.x))), !(!global2[_wgslsmith_index_u32(48462u, 16u)]))), var_1.a.x));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: u32) -> i32 {
    global3 = array<Struct_2, 29>();
    let var_0 = Struct_1(arg_0, abs(~(~max(arg_1.c.a.x, arg_2))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_1.d.x)))));
    let var_1 = true;
    global3 = array<Struct_2, 29>();
    global1 = -73067i >> (_wgslsmith_clamp_u32(12755u, 1u, _wgslsmith_mult_u32(~(~52497u), u_input.a)) % 32u);
    return -16619i;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<f32>) -> Struct_5 {
    let var_0 = vec3<i32>(-1i) * -vec3<i32>(2147483647i, func_5(vec3<f32>(arg_1.x, arg_0.x, arg_1.x), func_2(83927u), 1u), ~func_5(vec3<f32>(arg_0.x, arg_1.x, 1422f), Struct_5(arg_0.x, global2[_wgslsmith_index_u32(1u, 16u)], Struct_3(vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<f32>(arg_1.x, arg_1.x, -607f)), u_input.a));
    global0 = array<i32, 31>();
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1002f, arg_1.x, arg_1.x, arg_1.x))) * vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(arg_0.x - 304f), _wgslsmith_f_op_f32(min(525f, arg_0.x)), _wgslsmith_f_op_f32(-arg_1.x))))), func_2(_wgslsmith_clamp_u32(u_input.a, ~(~0u), u_input.a)).c, global2[_wgslsmith_index_u32(1u, 16u)]);
    global2 = array<bool, 16>();
    global0 = array<i32, 31>();
    return func_2(u_input.a);
}

fn func_6(arg_0: Struct_5, arg_1: vec3<u32>) -> vec4<bool> {
    global0 = array<i32, 31>();
    global2 = array<bool, 16>();
    global1 = firstTrailingBit(-24991i);
    var var_0 = Struct_1(vec3<f32>(arg_0.d.x, _wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(u_input.b, vec2<f32>(747f, arg_0.d.x), Struct_2(vec2<f32>(arg_0.d.x, 919f), 67257u), Struct_1(arg_0.d, arg_0.c.a.x, -810f))))), reverseBits(43382u), 678f);
    var var_1 = arg_1;
    return !vec4<bool>(~var_0.b >= 1u, !func_2(reverseBits(77366u)).b, !arg_0.b & select(true, global2[_wgslsmith_index_u32(firstTrailingBit(0u), 16u)], var_0.c > var_0.a.x), func_1(func_1(arg_0.d.yy, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_0.d.x) * var_0.a.xy)).d.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.a.zz, var_0.a.xx)))).b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 16>();
    var var_0 = select(func_6(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-280f, -948f) - vec2<f32>(423f, -563f))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-2145f)), -4084f)), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(83628u, 0u), ~2236u), ~(~u_input.a), ~(u_input.a & u_input.a))), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 16u)], firstLeadingBit(_wgslsmith_div_i32(u_input.b, -2147483647i)) <= _wgslsmith_mod_i32(u_input.b, 1355i), false, true), vec4<bool>(!global2[_wgslsmith_index_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, 83668u), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), 43335u), 16u)], !global2[_wgslsmith_index_u32(u_input.a, 16u)], global2[_wgslsmith_index_u32(0u, 16u)] == true, global2[_wgslsmith_index_u32(u_input.a << (44524u % 32u), 16u)]));
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(260f, -171f, -357f, -1670f) + vec4<f32>(-568f, 1865f, -485f, 928f)), vec4<f32>(1f, 1f, 1f, 1f))))), Struct_3(vec3<u32>(_wgslsmith_mult_u32(~u_input.a, 4294967295u), 0u, ~u_input.a >> (firstTrailingBit(u_input.a) % 32u))), var_0.x && select(global0[_wgslsmith_index_u32(1u >> (0u % 32u), 31u)] == global0[_wgslsmith_index_u32(~u_input.a, 31u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(78206u, u_input.a), vec2<u32>(4294967295u, 0u)), func_1(vec2<f32>(-705f, -1778f), vec2<f32>(629f, 1000f)).c.a.yz), 16u)], true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(126f, -1817f)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(71400u, 31u)], u_input.b, u_input.b) & vec4<i32>(-1860i, u_input.b, 2147483647i, u_input.b), select(vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(27924u, 31u)], -50005i, -8320i), vec4<i32>(1i, 0i, 0i, global0[_wgslsmith_index_u32(0u, 31u)]), vec4<bool>(var_1.c, var_0.x, false, false))), func_5(var_1.a.xwy, Struct_5(-491f, global2[_wgslsmith_index_u32(24785u, 16u)], var_1.b, var_1.a.wzy), 23749u) ^ global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.b.a.x, 37222u), 31u)]) ^ vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(var_1.b.a.x, 31u)], -2147483647i) >> (vec3<u32>(39466u, 1u, 0u) % vec3<u32>(32u)), vec3<i32>(1i, -16524i, 0i)), ~u_input.b), -_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.b, u_input.b, 2147483647i), firstLeadingBit(vec3<i32>(6968i, global0[_wgslsmith_index_u32(u_input.a, 31u)], 30158i))));
}

