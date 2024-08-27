struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(962f, 477f, -1555f), vec3<f32>(-919f, 1740f, 337f), vec3<f32>(733f, -234f, 3021f));

var<private> global1: i32 = 17632i;

var<private> global2: array<Struct_3, 6>;

var<private> global3: Struct_4;

var<private> global4: array<vec3<i32>, 6>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>) -> Struct_1 {
    global2 = array<Struct_3, 6>();
    global4 = array<vec3<i32>, 6>();
    let var_0 = global3.a.b;
    let var_1 = global3.d;
    var var_2 = Struct_1(countOneBits(u_input.a), _wgslsmith_dot_vec2_u32(global3.a.b, global3.a.b << ((_wgslsmith_mult_vec2_u32(global3.a.b, vec2<u32>(global3.a.b.x, global3.a.b.x)) >> (countOneBits(vec2<u32>(0u, 1u)) % vec2<u32>(32u))) % vec2<u32>(32u))), vec2<bool>(true, true));
    return Struct_1(firstTrailingBit(u_input.a), _wgslsmith_mult_u32(var_0.x, abs(~u_input.a | 4294967295u)), !vec2<bool>(!arg_1.x, false));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = !vec3<bool>(!arg_1.c.x, arg_1.c.x, true);
    let var_1 = Struct_1(max(_wgslsmith_div_u32(arg_1.b, arg_1.b) ^ (_wgslsmith_add_u32(global3.a.b.x, 4294967295u) >> (~global3.a.b.x % 32u)), 57490u ^ ~(u_input.a & arg_1.a)), ~(~6393u), !select(arg_1.c, !vec2<bool>(var_0.x, arg_1.c.x), vec2<bool>(var_0.x, !arg_1.c.x)));
    let var_2 = Struct_1(arg_1.b, reverseBits(~(_wgslsmith_mult_u32(global3.a.b.x, global3.a.b.x) | u_input.a)), select(!vec2<bool>(true, all(vec2<bool>(false, false))), func_2(vec2<bool>(arg_1.b < u_input.a, arg_1.c.x), vec4<bool>(var_0.x, true, all(vec4<bool>(var_1.c.x, var_1.c.x, true, true)), all(vec2<bool>(arg_1.c.x, true)))).c, select(!(!vec2<bool>(var_1.c.x, false)), vec2<bool>(any(vec3<bool>(true, var_1.c.x, var_0.x)), all(vec2<bool>(true, arg_1.c.x))), select(vec2<bool>(var_1.c.x, arg_1.c.x), var_0.xx, arg_1.c.x))));
    var var_3 = Struct_4(Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global3.a.a)))))), ~_wgslsmith_div_vec2_u32(select(vec2<u32>(var_1.a, var_2.a), global3.a.b, true), ~global3.a.b)), global3.b, 33515i, firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(19656i, 9743i) >> (global3.a.b % vec2<u32>(32u)), ~_wgslsmith_mod_vec2_i32(global3.d, vec2<i32>(global3.d.x, arg_0.x)))), _wgslsmith_div_i32(arg_0.x, global3.e));
    return var_3.a.b;
}

fn func_4(arg_0: vec2<u32>) -> Struct_4 {
    global4 = array<vec3<i32>, 6>();
    var var_0 = Struct_3(-161f, vec2<u32>(func_2(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false))).a, 54430u));
    global3 = Struct_4(Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(249f)))), _wgslsmith_f_op_f32(sign(-253f))), var_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(global3.a.b.x, 3u)]) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(228f, 1355f, var_0.a)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-541f, var_0.a, -476f) - vec3<f32>(-386f, var_0.a, global3.b.x))))), max(global3.e, select(-global3.e, firstLeadingBit(global3.e), true) << (firstLeadingBit(~4294967295u) % 32u)), global3.d, -8619i ^ _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global3.d.x, 1i, 1i, global3.d.x), ~vec4<i32>(24494i, global3.d.x, -2147483647i, -6841i)), vec4<i32>(global3.e | 67815i, firstLeadingBit(326i), _wgslsmith_clamp_i32(-2147483647i, 2147483647i, global3.c), global3.e)));
    var_0 = global2[_wgslsmith_index_u32(4294967295u, 6u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global3.b.x, _wgslsmith_f_op_f32(-global3.a.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a - -876f))), -396f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -251f))))));
    return Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(17365u, 72503u), 6u)], vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a))), _wgslsmith_f_op_f32(var_0.a + global3.b.x))), global3.b.x, var_0.a), -global3.c | 37065i, global3.d, -28313i);
}

fn func_1(arg_0: Struct_2) -> bool {
    var var_0 = ~global3.d;
    global3 = func_4(abs(~func_3(vec3<i32>(global3.c, global3.c, 0i) & vec3<i32>(var_0.x, 0i, -2147483647i), func_2(arg_0.c.c, vec4<bool>(false, arg_0.b, arg_0.b, true)))));
    var var_1 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, ~global3.a.b.x, ~52687u, global3.a.b.x), max(vec4<u32>(0u, u_input.a, 0u, 145718u) << (vec4<u32>(12646u, 1u, global3.a.b.x, 54246u) % vec4<u32>(32u)), vec4<u32>(global3.a.b.x, 4294967295u, global3.a.b.x, u_input.a))) & (vec4<u32>(firstTrailingBit(1u), max(~arg_0.d.b, select(1u, 4294967295u, false)), ~global3.a.b.x, u_input.a << ((u_input.a >> (global3.a.b.x % 32u)) % 32u)) ^ vec4<u32>(u_input.a, _wgslsmith_div_u32(max(arg_0.d.b, arg_0.c.b), 4294967295u), ~1u, min(arg_0.c.b, global3.a.b.x)));
    let var_2 = arg_0.b;
    global1 = _wgslsmith_add_i32(-462i, -select(1821i, -45042i, true));
    return true;
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> bool {
    global1 = -1i;
    var var_0 = func_2(vec2<bool>(any(vec3<bool>(false, false, arg_1.b)), !select(false, false, false)), vec4<bool>(arg_0, true, arg_0, arg_0)).c;
    let var_1 = arg_1;
    var var_2 = vec2<i32>(_wgslsmith_clamp_i32(global3.e, 1i, -23266i ^ global3.e) >> (4294967295u % 32u), -53557i);
    var var_3 = arg_0;
    return func_1(arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global3.b.x, true, Struct_1(~(~(u_input.a | 47770u)), global3.a.b.x, !select(vec2<bool>(false, false), vec2<bool>(true, false), 1u <= u_input.a)), Struct_1(~(~max(u_input.a, 18913u)), countOneBits(_wgslsmith_add_u32(global3.a.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(18976u, u_input.a), vec2<u32>(1u, global3.a.b.x)))), vec2<bool>(func_5(func_1(Struct_2(-666f, true, Struct_1(35564u, 1u, vec2<bool>(false, true)), Struct_1(0u, u_input.a, vec2<bool>(true, true)), vec3<f32>(global3.b.x, -705f, -520f))), Struct_2(1126f, true, Struct_1(21659u, global3.a.b.x, vec2<bool>(false, true)), Struct_1(0u, global3.a.b.x, vec2<bool>(false, false)), global0[_wgslsmith_index_u32(global3.a.b.x, 3u)])), any(select(vec2<bool>(true, false), vec2<bool>(true, false), true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global3.a.a * global3.b.x), -389f, global3.a.a) - global0[_wgslsmith_index_u32(u_input.a, 3u)])));
    let var_1 = select(func_4(func_4(select(global3.a.b, global3.a.b, var_0.c.c)).a.b).a.b & _wgslsmith_div_vec2_u32(vec2<u32>(~u_input.a, 14517u), ~global3.a.b), vec2<u32>(firstLeadingBit(_wgslsmith_div_u32(select(4294967295u, global3.a.b.x, var_0.c.c.x), firstLeadingBit(104017u))), ~(~4294967295u)), -28412i < min(firstTrailingBit(~global3.d.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global3.d.x) >> (global3.a.b % vec2<u32>(32u)), global3.d)));
    let var_2 = 898f;
    global4 = array<vec3<i32>, 6>();
    let var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -324f), _wgslsmith_f_op_f32(abs(439f))) * 296f) - 1144f), vec2<u32>(global3.a.b.x >> (var_0.c.a % 32u), func_4(global3.a.b).a.b.x));
    var var_4 = Struct_2(-1000f, any(vec3<bool>(true, true, true)), Struct_1(24084u, ~(~(~global3.a.b.x)), !(!select(vec2<bool>(var_0.b, false), vec2<bool>(var_0.d.c.x, true), var_0.d.c))), func_2(func_2(vec2<bool>(true, false), select(vec4<bool>(false, true, true, var_0.d.c.x), vec4<bool>(var_0.b, false, true, true), false)).c, vec4<bool>(false, true, var_0.d.c.x || all(vec4<bool>(true, var_0.d.c.x, false, true)), var_0.c.c.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.a, var_0.e.x, var_3.a)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.e + vec3<f32>(var_2, var_2, -385f)) * _wgslsmith_f_op_vec3_f32(select(global0[_wgslsmith_index_u32(var_0.d.a, 3u)], global0[_wgslsmith_index_u32(var_3.b.x, 3u)], false)))))));
    let var_5 = select((_wgslsmith_mod_u32(var_0.d.a, var_1.x) >> (57482u % 32u)) | 0u, var_3.b.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-2147483647i, countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(5783i, global3.e), countOneBits(global3.d))), global3.d.x, ~(-90770i)), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(var_3.b.x, var_5), u_input.a), max(var_4.c.b >> (var_0.c.a % 32u), var_3.b.x), 40407u) | vec3<u32>(~(~global3.a.b.x), var_1.x, global3.a.b.x), _wgslsmith_clamp_vec2_u32(select(global3.a.b, var_1, func_2(vec2<bool>(true, true), select(vec4<bool>(true, var_0.b, true, false), vec4<bool>(true, var_4.c.c.x, true, var_4.c.c.x), var_4.c.c.x)).c), vec2<u32>(_wgslsmith_sub_u32(4294967295u, 0u), 4294967295u) ^ vec2<u32>(var_1.x | var_5, global3.a.b.x), var_1));
}

