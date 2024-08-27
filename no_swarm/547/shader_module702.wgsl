struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: i32,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(0u), 22244u), Struct_2(Struct_1(0u), 1u), Struct_2(Struct_1(0u), 0u), Struct_2(Struct_1(61249u), 34592u), Struct_2(Struct_1(8179u), 42439u), Struct_2(Struct_1(4294967295u), 34887u), Struct_2(Struct_1(13451u), 4964u), Struct_2(Struct_1(1u), 4812u), Struct_2(Struct_1(0u), 0u), Struct_2(Struct_1(69277u), 11750u), Struct_2(Struct_1(13881u), 4294967295u), Struct_2(Struct_1(0u), 0u), Struct_2(Struct_1(4294967295u), 0u), Struct_2(Struct_1(19867u), 4294967295u));

var<private> global1: Struct_3;

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(45353u), Struct_1(4294967295u), Struct_1(1u), Struct_1(30296u), Struct_1(72921u), Struct_1(24653u), Struct_1(21309u), Struct_1(87683u), Struct_1(1u), Struct_1(4294967295u), Struct_1(2666u), Struct_1(1u), Struct_1(1u), Struct_1(80365u), Struct_1(0u), Struct_1(11263u), Struct_1(1u), Struct_1(0u), Struct_1(45583u), Struct_1(1u), Struct_1(1u), Struct_1(51152u), Struct_1(63828u), Struct_1(76807u), Struct_1(13588u), Struct_1(5050u), Struct_1(18864u), Struct_1(18923u), Struct_1(65157u), Struct_1(1u), Struct_1(1u), Struct_1(1u));

var<private> global3: Struct_3;

var<private> global4: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_5) -> f32 {
    global1 = Struct_3(~(-25302i), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.b))))));
    var var_0 = reverseBits(-(~u_input.a.zy) << (u_input.b.yx % vec2<u32>(32u)));
    var var_1 = _wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(u_input.d, 11161u, u_input.b.x, 1u)), abs(vec4<u32>(u_input.d, 34652u, 1u, u_input.b.x))), max(vec4<u32>(413u, 4294967295u, 14167u, abs(u_input.b.x)), ~vec4<u32>(u_input.b.x, u_input.d, 29903u, 1u))) >> (~firstLeadingBit(min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.d, u_input.d), vec4<u32>(u_input.b.x, u_input.d, 4294967295u, u_input.d)), vec4<u32>(u_input.b.x, u_input.d, 1u, u_input.d) | vec4<u32>(43148u, u_input.d, 0u, 0u))) % vec4<u32>(32u));
    var_0 = ~(-(-max(u_input.a.yz, u_input.a.xy) & u_input.a.yy));
    var var_2 = Struct_4(-40659i);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global3.b))));
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1031f * 2369f))))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.b))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(242f)), _wgslsmith_f_op_f32(func_3(Struct_5(-2147483647i, vec3<bool>(true, true, true), global3.b)))))), global3.b), select(select(!select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, false)), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false), true), vec2<bool>(true, any(vec4<bool>(false, false, false, false))), vec2<bool>(u_input.d <= arg_0.a.a, global3.b == global3.b)), vec2<bool>(true, true))));
    global1 = Struct_3(_wgslsmith_div_i32(min((-1860i << (u_input.b.x % 32u)) & (2147483647i | global3.a), u_input.c << (~96007u % 32u)), -(~(~2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -560f)), 352f))));
    let var_1 = Struct_3(abs(-_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a, global1.a, global1.a), u_input.a)) << (firstTrailingBit(~(4294967295u << (u_input.b.x % 32u))) % 32u), _wgslsmith_f_op_f32(step(global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-331f)) * _wgslsmith_f_op_f32(global3.b * global3.b)) - global1.b))));
    var var_2 = ~(~u_input.d);
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-911f, -297f, -941f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-745f, -280f, 268f), vec3<f32>(-1211f, global1.b, global1.b))) - vec3<f32>(var_1.b, 305f, -289f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-861f, -166f, 789f)) * vec3<f32>(-725f, var_1.b, 954f))))));
    return var_1;
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> vec3<i32> {
    var var_0 = Struct_4(-22428i);
    global3 = func_2(global0[_wgslsmith_index_u32(u_input.d, 14u)]);
    let var_1 = select(~_wgslsmith_clamp_vec4_i32(-(vec4<i32>(global3.a, -1i, 0i, global3.a) | vec4<i32>(-66471i, u_input.c, -1i, -48645i)), select(vec4<i32>(u_input.c, 0i, 1i, global3.a), vec4<i32>(2147483647i, -71956i, 1904i, -2147483647i), !arg_1.x), firstTrailingBit(vec4<i32>(global3.a, 1i, -2147483647i, global3.a)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 20307u, u_input.b.x, u_input.b.x), vec4<u32>(125670u, 31108u, 28911u, 22452u)) % vec4<u32>(32u))), vec4<i32>(-reverseBits(global3.a), -1i, 4862i << (1u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, firstLeadingBit(-40123i), global3.a, var_0.a), -select(vec4<i32>(global1.a, -20216i, 2147483647i, global1.a), vec4<i32>(-23976i, global1.a, -19737i, 0i), false))), arg_1);
    global3 = func_2(Struct_2(global2[_wgslsmith_index_u32(u_input.d, 32u)], 1u));
    let var_2 = ~u_input.b.yx;
    return vec3<i32>(-1i) * -(~select(firstLeadingBit(vec3<i32>(2147483647i, -27678i, var_1.x)), vec3<i32>(-14224i, global3.a, var_1.x), !vec3<bool>(arg_1.x, arg_1.x, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(1429f, select(vec4<bool>(true, false, false, any(vec4<bool>(false, false, false, true))), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), true), all(vec4<bool>(false, true, true, false))), true)) >> (u_input.b % vec3<u32>(32u));
    let var_1 = var_0.yz;
    let var_2 = Struct_5(min(_wgslsmith_dot_vec4_i32(abs(~vec4<i32>(0i, 2147483647i, var_1.x, var_1.x)), vec4<i32>(_wgslsmith_add_i32(var_0.x, -1i), global1.a, var_0.x, 46825i)), ~abs(func_1(global1.b, vec4<bool>(true, false, false, true)).x)), vec3<bool>(true, true, !(!any(vec3<bool>(false, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1140f))) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, global3.b)), _wgslsmith_f_op_f32(func_3(Struct_5(var_0.x, vec3<bool>(true, false, false), -546f))))))));
    let var_3 = func_2(global0[_wgslsmith_index_u32(6923u, 14u)]);
    var var_4 = _wgslsmith_mod_u32(4294967295u, ~firstLeadingBit(u_input.b.x)) >> (4294967295u % 32u);
    var var_5 = -881f;
    var_0 = abs(abs(-vec3<i32>(var_2.a & u_input.a.x, ~var_1.x, -15348i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-829f, global1.b), vec2<f32>(358f, global1.b)))), vec2<f32>(func_2(global0[_wgslsmith_index_u32(11644u, 14u)]).b, 477f)))), vec4<u32>(~(~(0u | u_input.b.x)), _wgslsmith_dot_vec2_u32(u_input.b.yz, u_input.b.xy), ~1u, 18963u), _wgslsmith_sub_vec2_i32(var_0.xx, firstTrailingBit(vec2<i32>(~var_3.a, _wgslsmith_sub_i32(var_3.a, 23511i)))), vec4<i32>(-1i) * -((vec4<i32>(2147483647i, 28923i, 12394i, var_3.a) << (vec4<u32>(69541u, u_input.d, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) | (vec4<i32>(var_2.a, -23006i, u_input.a.x, global3.a) | vec4<i32>(1935i, 23280i, 0i, 2077i))), abs(~u_input.b));
}

