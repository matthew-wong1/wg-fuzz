struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: u32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(true, true, true, false, true, false, true, true, true, true, true, false, false, false, false, false, false, true, true, true, false, false, false, true, false, false, true, true);

var<private> global1: Struct_4;

var<private> global2: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(4294967295u), Struct_3(20054u), Struct_3(36590u), Struct_3(4294967295u), Struct_3(37706u), Struct_3(4294967295u), Struct_3(57287u), Struct_3(0u), Struct_3(1u), Struct_3(28225u), Struct_3(1u), Struct_3(20520u), Struct_3(0u), Struct_3(38301u), Struct_3(6622u), Struct_3(4821u), Struct_3(1u), Struct_3(1u), Struct_3(4294967295u), Struct_3(4294967295u), Struct_3(49199u), Struct_3(65179u), Struct_3(59566u), Struct_3(1u), Struct_3(1u), Struct_3(96447u), Struct_3(0u));

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> u32 {
    global2 = array<Struct_3, 27>();
    global2 = array<Struct_3, 27>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(852f - _wgslsmith_f_op_f32(-global1.e.c.x)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-751f, 607f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.a))), -332f)) - _wgslsmith_f_op_f32(global1.e.c.x + _wgslsmith_f_op_f32(min(global1.a, _wgslsmith_f_op_f32(abs(766f))))));
    let var_1 = global1.c;
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-415f, global1.e.c.x), global1.e.c))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.a, -809f)))))));
    return 36222u;
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = true;
    var var_1 = min(~(~(~global1.e.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(53477u, global1.b, 66274u), global1.e.a, global1.e.a), abs(global1.e.a)), 4294967295u, ~(22807u >> (arg_0.a % 32u)), _wgslsmith_mod_u32(abs(global1.e.a.x), 4294967295u ^ arg_0.a)), abs(~vec4<u32>(4294967295u, global1.e.a.x, 4294967295u, 4294967295u)) | max(vec4<u32>(0u, arg_0.a, global1.e.a.x, arg_0.a), ~vec4<u32>(4294967295u, 0u, 54306u, global1.e.a.x))));
    let var_2 = global1.a;
    var var_3 = abs(max(~arg_0.a, global1.b));
    global1 = Struct_4(-356f, _wgslsmith_clamp_u32(abs(4294967295u ^ arg_0.a), ~arg_0.a ^ ~4294967295u, ~arg_0.a >> (arg_0.a % 32u)) >> (abs(global1.e.a.x) % 32u), ~0u, true, Struct_2(vec3<u32>(~(~38624u), ~arg_0.a, select(41673u, arg_0.a, false)), Struct_1(vec2<bool>(true, global3.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1625f, global1.a)))), -arg_1));
    return Struct_2(~(~countOneBits(~vec3<u32>(6585u, global1.b, global1.e.a.x))), global1.e.b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-659f, _wgslsmith_f_op_f32(sign(global1.e.c.x))), _wgslsmith_f_op_vec2_f32(select(global1.e.c, _wgslsmith_div_vec2_f32(vec2<f32>(-571f, -764f), vec2<f32>(-1000f, 364f)), global1.e.b.a))))), vec3<i32>(31845i, ~_wgslsmith_div_i32(2147483647i, max(u_input.a, u_input.a)), firstTrailingBit(-(i32(-1i) * -16782i))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: u32) -> u32 {
    global0 = array<bool, 28>();
    let var_0 = _wgslsmith_mod_u32(arg_3, _wgslsmith_mult_u32(~arg_1 << (_wgslsmith_dot_vec2_u32(global1.e.a.yx, vec2<u32>(4294967295u, 3207u)) % 32u), arg_1));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1769f + -332f), 740f)) - _wgslsmith_f_op_f32(sign(global1.e.c.x)));
    let var_2 = _wgslsmith_sub_i32(u_input.a, -1i);
    var var_3 = global1.e.c;
    return 0u << (~((1u << (min(arg_1, arg_3) % 32u)) & abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0, global1.e.a.x, 57519u), vec4<u32>(4294967295u, 19945u, global1.c, var_0)))) % 32u);
}

fn func_1() -> f32 {
    let var_0 = !select(!select(!vec3<bool>(global3.a.x, true, global0[_wgslsmith_index_u32(41056u, 28u)]), !vec3<bool>(global3.a.x, global1.e.b.a.x, false), select(vec3<bool>(global1.d, global3.a.x, false), vec3<bool>(true, global0[_wgslsmith_index_u32(21952u, 28u)], global1.d), vec3<bool>(global1.d, global3.a.x, true))), vec3<bool>(true, global3.a.x && global3.a.x, global1.d), any(vec4<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(global1.e.a.x, 28u)], global1.e.b.a.x, global3.a.x, global3.a.x)), global1.e.c.x >= 359f, true, true)));
    global1 = Struct_4(1000f, func_4(func_3(global2[_wgslsmith_index_u32(func_2(), 27u)], global1.e.d), ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(global1.e.a.x, 0u), _wgslsmith_div_u32(global1.c, global1.e.a.x), 33835u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.a, -659f)) - _wgslsmith_f_op_f32(-global1.e.c.x)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~global1.b, abs(global1.b)), abs(global1.b), func_3(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 31951u), 27u)], global1.e.d).a.x)), _wgslsmith_sub_u32(~1u, 51907u), (global1.e.a.x >= (0u & firstTrailingBit(0u))) || !(!any(var_0)), global1.e);
    let var_1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e.c.x) - _wgslsmith_f_op_f32(global1.e.c.x * -2077f)), 876f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.a)) + _wgslsmith_f_op_f32(step(2065f, global1.e.c.x))))), 13534u, _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(25045u, 45016u) & global1.e.a.yy, _wgslsmith_clamp_vec2_u32(global1.e.a.xz, global1.e.a.xx, vec2<u32>(global1.b, 34774u))), _wgslsmith_div_u32(global1.b, _wgslsmith_dot_vec3_u32(global1.e.a & vec3<u32>(4294967295u, global1.b, global1.b), global1.e.a))), true, func_3(global2[_wgslsmith_index_u32(global1.e.a.x, 27u)], firstLeadingBit(-max(global1.e.d, global1.e.d))));
    global3 = Struct_1(!vec2<bool>(global0[_wgslsmith_index_u32(global1.e.a.x, 28u)], true));
    global1 = Struct_4(_wgslsmith_f_op_f32(abs(global1.a)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(global1.e.a.x, global1.c, 1u, global1.c)), vec4<u32>(0u, 1u, _wgslsmith_clamp_u32(88883u, 62344u << (0u % 32u), ~var_1.c), 3912u)), var_1.b, func_4(Struct_2(vec3<u32>(60226u, var_1.e.a.x, global1.c), func_3(Struct_3(85420u), var_1.e.d).b, vec2<f32>(var_1.e.c.x, global1.a), reverseBits(global1.e.d)), 1u, -1227f, _wgslsmith_add_u32(var_1.c, global1.b) | (var_1.b ^ 24304u)) < reverseBits(41520u), func_3(Struct_3(_wgslsmith_mod_u32(var_1.e.a.x ^ 4294967295u, 24687u)), var_1.e.d));
    return _wgslsmith_f_op_f32(floor(1105f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(global1.a, 1u, global1.e.a.x, global1.d, global1.e);
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, 1069f, var_0.e.c.x, global1.e.c.x)) * vec4<f32>(var_0.a, global1.a, _wgslsmith_div_f32(689f, 557f), _wgslsmith_f_op_f32(-global1.e.c.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.c.x, 1266f, 1038f, -1462f) + vec4<f32>(global1.a, -909f, var_0.a, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1126f, -685f, 256f, 1000f))))), vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(256f + -579f))), _wgslsmith_f_op_f32(round(-1061f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1610f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.e.c.x - global1.a)))))));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(~(~global1.e.a.x), ~(~5541u), ~(~global1.c)), _wgslsmith_add_u32((func_4(global1.e, 4294967295u, -728f, 1u) ^ var_0.c) ^ _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, var_0.c, 35188u, var_0.c)), ~vec4<u32>(global1.b, 35872u, 48453u, var_0.b)), 1u)), 27u)];
    var var_3 = !select(select(vec3<bool>(true, !global3.a.x, select(false, global0[_wgslsmith_index_u32(1u, 28u)], true)), !select(vec3<bool>(false, var_0.d, true), vec3<bool>(global1.d, true, true), vec3<bool>(false, global0[_wgslsmith_index_u32(var_2.a, 28u)], false)), select(!vec3<bool>(global3.a.x, true, var_0.e.b.a.x), select(vec3<bool>(global1.d, global0[_wgslsmith_index_u32(35105u, 28u)], global3.a.x), vec3<bool>(true, true, true), false), all(vec4<bool>(var_0.e.b.a.x, false, true, true)))), !(!(!vec3<bool>(global3.a.x, false, true))), select(vec3<bool>(select(true, false, true), global1.e.d.x == 31225i, var_0.e.b.a.x), vec3<bool>(u_input.a == global1.e.d.x, false, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, 0u), 28u)]), true || all(vec2<bool>(global1.e.b.a.x, global1.e.b.a.x))));
    var_0 = Struct_4(-2293f, var_2.a, ~var_2.a, global3.a.x, Struct_2(_wgslsmith_div_vec3_u32(abs(var_0.e.a), ~_wgslsmith_clamp_vec3_u32(var_0.e.a, vec3<u32>(var_0.c, 4294967295u, 1u), vec3<u32>(var_2.a, 92292u, var_0.e.a.x))), global1.e.b, vec2<f32>(global1.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, var_1.x) - _wgslsmith_f_op_f32(ceil(325f)))), -var_0.e.d << ((~vec3<u32>(1u, 1u, global1.b) >> (_wgslsmith_mult_vec3_u32(global1.e.a, var_0.e.a) % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_4 = vec4<bool>(all(select(var_3.xy, var_0.e.b.a, vec2<bool>(var_0.d, true || var_3.x))), true, global0[_wgslsmith_index_u32(func_4(Struct_2(_wgslsmith_mod_vec3_u32(~var_0.e.a, ~vec3<u32>(0u, 81997u, 0u)), func_3(Struct_3(1u), vec3<i32>(u_input.a, -2800i, u_input.a)).b, _wgslsmith_f_op_vec2_f32(-var_0.e.c), vec3<i32>(u_input.a, -2147483647i, 1i) ^ global1.e.d), 19375u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_0.a)))), _wgslsmith_div_f32(-248f, var_1.x), var_3.x | !global1.e.b.a.x)), _wgslsmith_add_u32(func_3(global2[_wgslsmith_index_u32(var_2.a, 27u)], var_0.e.d).a.x << (48302u % 32u), ~var_2.a)), 28u)], true && !global3.a.x);
    var_0 = Struct_4(-264f, ~(reverseBits(var_2.a) | ~max(global1.c, global1.e.a.x)), abs(_wgslsmith_add_u32(var_0.c, select(~1u, _wgslsmith_sub_u32(0u, var_0.b), any(vec3<bool>(global1.e.b.a.x, false, false))))), any(vec3<bool>(any(vec2<bool>(false, var_3.x)), true, func_3(global2[_wgslsmith_index_u32(firstLeadingBit(global1.c), 27u)], var_0.e.d | vec3<i32>(2774i, var_0.e.d.x, u_input.a)).b.a.x)), func_3(global2[_wgslsmith_index_u32(~(~global1.e.a.x), 27u)], global1.e.d << ((reverseBits(vec3<u32>(0u, 0u, 28578u)) << (reverseBits(vec3<u32>(285u, var_0.c, var_2.a)) % vec3<u32>(32u))) % vec3<u32>(32u))));
    var var_5 = Struct_4(_wgslsmith_f_op_f32(-var_1.x), 0u, 21722u, var_3.x, func_3(Struct_3(~(~var_0.c)), vec3<i32>(-29824i, -(~(-1i)), _wgslsmith_clamp_i32(1i, 0i, var_0.e.d.x) ^ _wgslsmith_add_i32(16580i, -70171i))));
    var var_6 = func_3(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.c, var_0.b), 27u)], var_0.e.d).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))), ~max(var_5.e.a.x, 4294967295u));
}

