struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

var<private> global1: array<vec2<bool>, 27>;

var<private> global2: vec3<f32> = vec3<f32>(1000f, -931f, 736f);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> vec2<bool> {
    global1 = array<vec2<bool>, 27>();
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    var var_0 = true;
    return vec2<bool>(!all(select(!vec2<bool>(arg_2, arg_2), vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(11430u, 9u)], true))), !any(global1[_wgslsmith_index_u32(~80316u, 27u)]) & arg_2);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_2) -> u32 {
    let var_0 = Struct_3(global1[_wgslsmith_index_u32(1u, 27u)]);
    let var_1 = !select(!func_2(Struct_1(vec3<f32>(arg_2.a.a.x, arg_2.a.a.x, 983f)), u_input.a, var_0.a.x), select(vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 8652u)), 9u)], !global0[_wgslsmith_index_u32(0u, 9u)]), select(vec2<bool>(true, true), global1[_wgslsmith_index_u32(min(11157u, 1u), 27u)], func_2(Struct_1(arg_2.a.a), arg_1.x, false)), true), var_0.a);
    var var_2 = arg_0.a;
    let var_3 = Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(151f, 719f, 489f), vec3<f32>(-166f, -104f, 1621f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.a.x, var_2.a.x, var_2.a.x) * arg_0.a.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_2.a.a, arg_0.a.a, var_1.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(814f, arg_2.a.a.x, global2.x))))));
    let var_4 = max(_wgslsmith_mod_vec4_u32(vec4<u32>(~(~23796u), 11431u, 1512u, _wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(4294967295u, 4294967295u), _wgslsmith_sub_u32(46137u, 18053u))), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(8863u, 1u, 18141u, 4778u), vec4<u32>(1u, 1u, 1u, 1u)))), firstTrailingBit(countOneBits(vec4<u32>(1u, 1u, 1u, 1u))));
    return 22698u;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec2<u32>, arg_3: vec3<i32>) -> Struct_3 {
    global2 = vec3<f32>(global2.x, global2.x, arg_1);
    var var_0 = Struct_3(func_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, global2.x, 1537f) * vec3<f32>(arg_1, arg_1, 735f)), vec3<f32>(arg_1, arg_1, -294f))), u_input.a, true));
    let var_1 = vec3<u32>(arg_2.x, func_3(Struct_2(Struct_1(vec3<f32>(611f, -680f, 143f))), -arg_3.zx, Struct_2(Struct_1(vec3<f32>(global2.x, -2418f, 1000f)))), arg_2.x) | select(~(~vec3<u32>(arg_2.x, 36711u, arg_2.x) & vec3<u32>(arg_2.x, 0u, 37991u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1261u, arg_2.x, min(arg_2.x, 66523u)), max(vec3<u32>(4294967295u, arg_2.x, 18951u), vec3<u32>(arg_2.x, 1u, arg_2.x))), arg_0);
    var var_2 = arg_2;
    var var_3 = 1i;
    return Struct_3(global1[_wgslsmith_index_u32(abs(reverseBits(select(max(var_2.x, var_2.x), var_1.x, true))), 27u)]);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec3<i32>) -> f32 {
    let var_0 = ~1u;
    let var_1 = arg_0;
    global0 = array<bool, 9>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a)) - vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.a.x, var_1.a.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.x))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_2.a.x, arg_0.a.x, true)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(803f, -1046f))) * _wgslsmith_f_op_f32(-508f - var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, var_1.a.x) - var_2.a.x)));
    return _wgslsmith_div_f32(var_3.x, var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -128f);
    global2 = vec3<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.x, 1162f, global2.x), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2102f, 1323f, global2.x)))))), func_1(global0[_wgslsmith_index_u32(83295u, 9u)], 327f, vec2<u32>(1u, 1u), countOneBits(abs(vec3<i32>(u_input.a, u_input.a, 33154i)))), func_1(false, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_mod_vec2_u32(max(vec2<u32>(0u, 43291u), vec2<u32>(4294967295u, 4294967295u)), select(vec2<u32>(36400u, 37438u), vec2<u32>(18648u, 0u), global0[_wgslsmith_index_u32(0u, 9u)])), vec3<i32>(u_input.a << (4294967295u % 32u), 3025i, 29778i)), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-15569i, u_input.a, 1i), vec3<i32>(-8544i, 1i, 1i)), vec3<i32>(~u_input.a, -8157i, 0i)))), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(4294967295u << (countOneBits(~4294967295u) % 32u)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(func_3(Struct_2(Struct_1(vec3<f32>(global2.x, global2.x, -1625f))), vec2<i32>(-6912i, u_input.a), Struct_2(Struct_1(vec3<f32>(993f, global2.x, global2.x)))), 62734u), firstLeadingBit(1u) & select(1u, 61048u, !global0[_wgslsmith_index_u32(1u, 9u)]))), 9u)];
    var_1 = all(vec3<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 9u)], global2.x > -796f, true, global2.x < -1085f)), (1i >> (1u % 32u)) > reverseBits(u_input.a), true));
    var var_2 = firstTrailingBit(vec2<u32>(_wgslsmith_clamp_u32(min(0u, ~27816u), ~(~1u), 2957u), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(62639u, 1u, 4294967295u), ~4294967295u), _wgslsmith_add_u32(select(0u, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 9u)]), firstTrailingBit(83915u)), 1u)));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 355f, global2.x) * vec3<f32>(global2.x, 450f, global2.x)) * vec3<f32>(925f, global2.x, global2.x)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2235f + global2.x)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, global2.x) - 633f)), -1040f, _wgslsmith_f_op_f32(global2.x * global2.x)), select(vec3<bool>(func_2(Struct_1(vec3<f32>(-206f, global2.x, 784f)), -1i, func_1(false, 478f, vec2<u32>(1u, 47121u), vec3<i32>(u_input.a, -48635i, u_input.a)).a.x).x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.x, 1u, 1u, 54609u), _wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, 1u, 28829u, var_2.x), vec4<u32>(1u, 58698u, 1u, 35163u))), 9u)], true), !(!select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(var_2.x, 9u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(63220u, 9u)], global0[_wgslsmith_index_u32(46131u, 9u)]), vec3<bool>(global0[_wgslsmith_index_u32(4234u, 9u)], false, global0[_wgslsmith_index_u32(79475u, 9u)]))), global0[_wgslsmith_index_u32(~var_2.x, 9u)])));
    var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.x, global2.x, _wgslsmith_f_op_f32(step(203f, -1657f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 483f, global2.x)), vec3<f32>(244f, global2.x, global2.x), true != global0[_wgslsmith_index_u32(var_2.x, 9u)])))) - vec3<f32>(-262f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.x))), _wgslsmith_div_f32(-2049f, _wgslsmith_f_op_f32(max(var_3.x, var_3.x))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, global2.x, global2.x)) - vec3<f32>(_wgslsmith_f_op_f32(trunc(1663f)), -845f, _wgslsmith_f_op_f32(min(global2.x, var_3.x)))), vec3<f32>(-1836f, _wgslsmith_f_op_f32(abs(-678f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -385f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(func_4(Struct_1(vec3<f32>(-696f, global2.x, -1502f)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 9u)])), vec3<i32>(u_input.a, u_input.a, -2147483647i))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(Struct_1(vec3<f32>(global2.x, var_3.x, var_3.x)), Struct_3(global1[_wgslsmith_index_u32(38063u, 27u)]), Struct_3(global1[_wgslsmith_index_u32(var_2.x, 27u)]), vec3<i32>(u_input.a, u_input.a, u_input.a))))))));
}

