struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<bool>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(-1i, 1i), true);

var<private> global1: array<vec4<bool>, 28>;

var<private> global2: f32;

var<private> global3: vec4<i32> = vec4<i32>(-7058i, 0i, 16720i, 7457i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(579f + 929f))), 548f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1691f, -824f)) + _wgslsmith_f_op_f32(-1265f + 373f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(435f - -1153f)))), vec4<f32>(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(f32(-1f) * -1150f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2234f)) + _wgslsmith_f_op_f32(536f + -1185f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(713f)), _wgslsmith_f_op_f32(max(-915f, -762f)))))));
    var var_1 = ~countOneBits((vec2<u32>(0u, u_input.c) << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u))) ^ max(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.b.zz, u_input.b.xy), firstLeadingBit(u_input.b.zz)));
    return u_input.a.x;
}

fn func_4(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = global3.x;
    var var_1 = vec4<i32>(func_3(), 0i, u_input.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(2147483647i, -2147483647i, global0.a.x, -42788i) ^ (u_input.a >> (vec4<u32>(u_input.b.x, 17044u, u_input.c, u_input.c) % vec4<u32>(32u))), ~(vec4<i32>(-20395i, global0.a.x, global3.x, global0.a.x) ^ vec4<i32>(global0.a.x, global0.a.x, 2147483647i, global0.a.x))), countOneBits(abs(vec4<i32>(-10025i, arg_0.a, global0.a.x, global0.a.x)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.e.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-544f + -186f))))) + _wgslsmith_f_op_f32(-arg_0.e.x));
    global2 = _wgslsmith_f_op_f32(arg_0.e.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2706f - arg_0.e.x)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.e.x + arg_0.e.x)))) + _wgslsmith_f_op_f32(389f * 826f)));
    let var_3 = -1000f;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, 380f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1446f, var_3) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_0.e.x) - arg_0.e))) * arg_0.e) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1392f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

fn func_2(arg_0: vec3<i32>) -> vec2<u32> {
    global0 = Struct_2(~(~global3.zx), !global0.b);
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2466f, 694f, -598f) * vec3<f32>(-857f, 276f, -1861f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-2227f, 943f, -1103f) + vec3<f32>(1001f, 860f, 252f)))))) - vec3<f32>(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(min(183f, _wgslsmith_f_op_f32(163f + 161f))))), -2868f, _wgslsmith_f_op_f32(f32(-1f) * -520f)));
    global0 = Struct_2(arg_0.yz, global0.b);
    let var_1 = Struct_1(~u_input.a.x, 1i, !select(vec3<bool>(global0.b, any(global1[_wgslsmith_index_u32(8821u, 28u)]), any(vec2<bool>(true, false))), vec3<bool>(true || global0.b, true, global0.b), !vec3<bool>(global0.b, true, global0.b)), max(abs(select(global0.a.x, 10280i, true) & 14490i), u_input.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_1(func_3(), firstLeadingBit(u_input.a.x), select(vec3<bool>(false, global0.b, global0.b), vec3<bool>(true, global0.b, true), global0.b), select(-34021i, u_input.a.x, true), _wgslsmith_f_op_vec2_f32(var_0.yy - vec2<f32>(-999f, var_0.x)))))));
    global1 = array<vec4<bool>, 28>();
    return firstLeadingBit(~(~firstLeadingBit(~vec2<u32>(1421u, u_input.c))));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>) -> vec2<bool> {
    let var_0 = Struct_2(-arg_0.a ^ firstLeadingBit(firstLeadingBit(vec2<i32>(-2147483647i, -1i) | global3.xw)), arg_0.b);
    let var_1 = 171f;
    let var_2 = Struct_2(firstTrailingBit(var_0.a), !any(vec2<bool>(var_0.b && global0.b, !arg_0.b)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1));
    let var_3 = vec4<i32>(_wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec3_i32(global3.yxy, countOneBits(vec3<i32>(var_2.a.x, global3.x, u_input.a.x)))), -2147483647i, firstLeadingBit(~(~var_2.a.x)), min(_wgslsmith_mod_i32(u_input.a.x, i32(-1i) * -14584i), -1i)) ^ _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, -vec4<i32>(-13730i, u_input.a.x, var_2.a.x, 0i)), vec4<i32>(arg_0.a.x, 1i, var_2.a.x & var_2.a.x, max(41197i, -47877i))), u_input.a);
    return select(vec2<bool>(false, any(select(vec3<bool>(var_2.b, true, true), vec3<bool>(true, true, true), global0.b))), select(!vec2<bool>(all(vec3<bool>(true, var_2.b, true)), !var_2.b), vec2<bool>(global0.b, any(!global1[_wgslsmith_index_u32(0u, 28u)])), false), select(select(vec2<bool>(true, true), select(!vec2<bool>(false, var_0.b), select(vec2<bool>(var_2.b, false), vec2<bool>(false, true), vec2<bool>(false, var_0.b)), vec2<bool>(true, true)), vec2<bool>(u_input.c < 0u, any(vec4<bool>(false, var_2.b, true, var_0.b)))), vec2<bool>(firstLeadingBit(u_input.b.x) == ~arg_1.x, var_2.b), !select(vec2<bool>(false, var_2.b), !vec2<bool>(false, var_2.b), !vec2<bool>(global0.b, arg_0.b))));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_clamp_u32(countOneBits(_wgslsmith_sub_u32(38678u, u_input.b.x)), countOneBits(arg_1 << (_wgslsmith_add_u32(arg_1, ~4294967295u) % 32u)), 52874u);
    let var_1 = !vec4<bool>(!global0.b, true, any(func_5(Struct_2(vec2<i32>(-649i, 2147483647i), global0.b), func_2(vec3<i32>(-1i, 1i, global0.a.x)))), global0.b);
    global3 = _wgslsmith_clamp_vec4_i32(-vec4<i32>(~global3.x, ~30872i, ~32666i, 2147483647i | u_input.a.x), firstTrailingBit(vec4<i32>(reverseBits(-1i), global3.x, 7205i, ~global0.a.x)), countOneBits(u_input.a)) ^ select(~(~vec4<i32>(global3.x, global0.a.x, global3.x, global3.x)), vec4<i32>(~(~23005i), u_input.a.x, i32(-1i) * -28201i, min(u_input.a.x | -51966i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global0.a.x), vec2<i32>(-1i, -1i)))), global0.b);
    return select(_wgslsmith_div_i32(global3.x, reverseBits(_wgslsmith_dot_vec3_i32(u_input.a.zzz, _wgslsmith_div_vec3_i32(vec3<i32>(1i, -19249i, u_input.a.x), global3.zwz)))), 1i, any(var_1.wzx));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 28>();
    global3 = vec4<i32>(-1i, func_1(vec2<f32>(-786f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-761f, 1000f)) * _wgslsmith_f_op_f32(round(239f)))), 4294967295u), -1i, global0.a.x);
    global2 = 1688f;
    global0 = Struct_2(_wgslsmith_mult_vec2_i32(select(-vec2<i32>(-2147483647i, global3.x), vec2<i32>(u_input.a.x, 15600i) ^ -vec2<i32>(global3.x, global0.a.x), true), vec2<i32>(u_input.a.x, global0.a.x)), true);
    var var_0 = Struct_2((u_input.a.xw >> (abs(u_input.b.yy) % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_sub_u32(func_2(vec3<i32>(2147483647i, global3.x, global0.a.x)).x, 37559u), _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, u_input.c), abs(1u))) % vec2<u32>(32u)), global0.b);
    var var_1 = Struct_1(global0.a.x, _wgslsmith_div_i32(func_3(), ~2147483647i), vec3<bool>(false, true, var_0.b | (true || var_0.b)), _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(select(u_input.a.xzy, global3.yzw, vec3<bool>(true, global0.b, false)), vec3<i32>(global3.x, -2147483647i, -62777i))), -firstTrailingBit(vec3<i32>(-75814i, u_input.a.x, global0.a.x) << (vec3<u32>(u_input.c, 0u, 56589u) % vec3<u32>(32u)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -389f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -510f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-164f * -712f) + -1000f))));
    let var_2 = vec3<bool>(func_5(Struct_2(vec2<i32>(16988i, -22710i), true), select(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(9213u, u_input.b.x), u_input.b.xy), u_input.b.zy), vec2<u32>(~1u, u_input.b.x >> (1u % 32u)), var_0.b)).x, var_1.c.x, global0.b);
    var var_3 = Struct_2(-abs(vec2<i32>(i32(-1i) * -35384i, abs(var_0.a.x))), true);
    var var_4 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(0i, 2147483647i), max(~(~(4294967295u & u_input.b.x)), ~(~_wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(4294967295u, 1u)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.x, -942f, var_1.e.x, -1034f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.x, var_1.e.x, -193f, var_1.e.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.x, 237f, var_1.e.x, var_1.e.x)))))));
}

