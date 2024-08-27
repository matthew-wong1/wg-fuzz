struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 18>;

var<private> global1: array<u32, 5> = array<u32, 5>(0u, 1u, 0u, 28894u, 0u);

var<private> global2: Struct_2 = Struct_2(Struct_1(-173f), Struct_1(-592f), Struct_1(1000f), vec2<i32>(-41246i, -11588i));

var<private> global3: u32;

var<private> global4: array<f32, 11> = array<f32, 11>(-1477f, -541f, -2118f, 225f, -1150f, 370f, 315f, -330f, 178f, 1153f, 697f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<bool>) -> vec4<f32> {
    global4 = array<f32, 11>();
    global3 = ~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~global1[_wgslsmith_index_u32(4294967295u, 5u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(100013u, 5u)], 5u)], 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37997u, 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52540u, 5u)], 5u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)], 2211u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)])), _wgslsmith_add_u32(39351u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)], 5u)])), global1[_wgslsmith_index_u32(54532u, 5u)]), 5u)], 0u);
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-global2.a.a)), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(271f)) - global2.b.a)))), Struct_1(-2174f), vec2<i32>(global2.d.x, _wgslsmith_dot_vec2_i32(abs(-vec2<i32>(u_input.a, u_input.a)), max(_wgslsmith_add_vec2_i32(global2.d, vec2<i32>(u_input.a, u_input.a)), -global2.d))));
    global0 = array<vec2<bool>, 18>();
    let var_1 = _wgslsmith_f_op_f32(abs(-1608f));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a.a, var_1, 310f, -730f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.a, -277f, var_1, global2.c.a) - vec4<f32>(-476f, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 11u)], -1000f, -517f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-196f, 1595f, global2.b.a, var_0.c.a), vec4<f32>(var_1, 880f, var_1, global2.b.a), false)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.a), _wgslsmith_f_op_f32(round(global2.a.a)), _wgslsmith_f_op_f32(floor(139f)), global2.b.a))));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(0u ^ (_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(96260u, 5u)], 5u)]), vec3<u32>(4294967295u, 0u, 24327u)) & global1[_wgslsmith_index_u32(~1u, 5u)]), 18u)]))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2))))) * -333f));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-153f, _wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(arg_1, arg_1))).x), _wgslsmith_f_op_vec2_f32(ceil(var_0.zw)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0.zx))))) - vec2<f32>(-1000f, 266f));
    let var_2 = Struct_5(arg_0, Struct_4(~reverseBits(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32460u, 5u)], 5u)])), ~arg_0.xw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-609f * arg_2), -535f)))));
    var var_3 = vec3<u32>(~select(abs(1u), select(23511u, 8563u, arg_1), select(arg_1, arg_1, arg_1)) | ~(~max(4294967295u, global1[_wgslsmith_index_u32(var_2.b.a, 5u)])), var_2.b.a & ~firstTrailingBit(countOneBits(global1[_wgslsmith_index_u32(53332u, 5u)])), var_2.b.a);
    return !select(vec3<bool>(1614f >= _wgslsmith_f_op_f32(var_2.b.c + global4[_wgslsmith_index_u32(var_3.x, 11u)]), true, global1[_wgslsmith_index_u32(var_2.b.a, 5u)] <= ~0u), !select(select(vec3<bool>(true, arg_1, true), vec3<bool>(true, false, true), vec3<bool>(arg_1, arg_1, true)), vec3<bool>(true, arg_1, false), false), select(vec3<bool>(arg_1, arg_0.x != -1i, any(vec3<bool>(arg_1, true, false))), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, arg_1), vec3<bool>(false, arg_1, true), vec3<bool>(arg_1, false, arg_1)), select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(true, arg_1, arg_1), true)), vec3<bool>(arg_1 | true, arg_1 || false, true)));
}

fn func_1(arg_0: vec2<u32>) -> vec2<f32> {
    let var_0 = 0u;
    let var_1 = ~(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(19990u, arg_0.x, global1[_wgslsmith_index_u32(0u, 5u)], arg_0.x), vec4<u32>(4294967295u, arg_0.x, 45973u, 13804u)) | 57893u, _wgslsmith_add_u32(_wgslsmith_add_u32(arg_0.x, 14233u), min(global1[_wgslsmith_index_u32(arg_0.x, 5u)], 42361u)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0, global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49241u, 5u)], 5u)], var_0), vec4<u32>(global1[_wgslsmith_index_u32(46494u, 5u)], 0u, 0u, var_0), true), _wgslsmith_sub_vec4_u32(vec4<u32>(51521u, global1[_wgslsmith_index_u32(var_0, 5u)], global1[_wgslsmith_index_u32(arg_0.x, 5u)], global1[_wgslsmith_index_u32(40795u, 5u)]), vec4<u32>(4294967295u, var_0, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], global1[_wgslsmith_index_u32(var_0, 5u)])))));
    var var_2 = (vec3<i32>(-1i) * -select(select(vec3<i32>(global2.d.x, -31581i, 1i), vec3<i32>(-1i, u_input.a, global2.d.x), vec3<bool>(false, false, false)), vec3<i32>(-74646i, -54616i, 0i), func_2(vec4<i32>(u_input.a, u_input.a, 1i, global2.d.x), true, -267f))) & abs(vec3<i32>(min(_wgslsmith_clamp_i32(12651i, global2.d.x, global2.d.x), min(global2.d.x, global2.d.x)), u_input.a, global2.d.x));
    global3 = select(max(countOneBits(12098u), _wgslsmith_sub_u32(1u, arg_0.x)), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, var_1.x, _wgslsmith_div_u32(var_1.x, global1[_wgslsmith_index_u32(0u, 5u)])), vec3<u32>(~(~4294967295u), 0u, 1u)), true);
    var var_3 = Struct_4(global1[_wgslsmith_index_u32(~(~4294967295u & _wgslsmith_add_u32(arg_0.x, var_0)), 5u)], vec2<i32>(_wgslsmith_add_i32(u_input.a, ~(~global2.d.x)), countOneBits(global2.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -915f));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c, -929f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2142f, global2.c.a))))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(747f, global2.a.a) + vec2<f32>(-213f, 424f)))))))), !vec2<bool>(true, !all(vec2<bool>(true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2001f;
    global1 = array<u32, 5>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_1(vec2<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(56826u, 5u)], 5u)], 5u)], 5u)])))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18678u, 5u)], 5u)], 5u)]) >> (abs(global1[_wgslsmith_index_u32(0u, 5u)]) % 32u), 11u)]) + _wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(false, all(vec2<bool>(false, false))))).x));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_1.x, -366f), _wgslsmith_div_f32(-286f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) - _wgslsmith_f_op_f32(158f - 366f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(67193u, 4294967295u), vec2<u32>(70975u, global1[_wgslsmith_index_u32(4294967295u, 5u)]), vec2<u32>(1u, global1[_wgslsmith_index_u32(0u, 5u)]))))))));
    var var_4 = firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, ~52877i, abs(min(u_input.a, global2.d.x)), max(2147483647i, global2.d.x) ^ max(0i, u_input.a)), firstLeadingBit(vec4<i32>(30052i, select(u_input.a, u_input.a, true), -u_input.a, u_input.a))));
    global2 = Struct_2(global2.c, Struct_1(-293f), Struct_1(_wgslsmith_f_op_f32(-324f * _wgslsmith_f_op_f32(floor(var_3.x)))), vec2<i32>(abs(0i), var_4.x));
    var_2 = global2.a.a;
    var var_5 = _wgslsmith_f_op_vec2_f32(func_1(min(vec2<u32>(~53375u, firstLeadingBit(~1u)), _wgslsmith_add_vec2_u32(~(vec2<u32>(44477u, 4294967295u) | vec2<u32>(global1[_wgslsmith_index_u32(1u, 5u)], 16532u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(24088u, global1[_wgslsmith_index_u32(1u, 5u)]), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44800u, 5u)], 5u)], 44707u)))))).x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_4.x), abs(min(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7497u, 5u)], 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1721u, 5u)], 5u)]), min(vec4<u32>(4294967295u, 57247u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)], 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)]), vec4<u32>(0u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13278u, 5u)], 5u)], global1[_wgslsmith_index_u32(59956u, 5u)]))) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)], global1[_wgslsmith_index_u32(15531u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], global1[_wgslsmith_index_u32(2524u, 5u)]), firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)], 1u, global1[_wgslsmith_index_u32(34577u, 5u)]))) % vec4<u32>(32u))), var_3, 3526u, var_4.x);
}

