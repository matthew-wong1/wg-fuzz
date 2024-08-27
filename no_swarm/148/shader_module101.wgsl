struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(33470u, -48705i, true);

var<private> global1: array<f32, 32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2() -> bool {
    var var_0 = Struct_1(0u, firstTrailingBit(_wgslsmith_add_i32(u_input.a.x, -1i)), global0.c);
    var var_1 = Struct_1(reverseBits(5700u), 40475i, global0.c);
    let var_2 = Struct_1(u_input.e, min(firstTrailingBit(0i), -2147483647i), all(vec2<bool>(true, true)));
    var_0 = var_2;
    var var_3 = var_2.a;
    return true;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: vec4<i32>) -> f32 {
    global1 = array<f32, 32>();
    let var_0 = ~_wgslsmith_mod_vec2_i32(vec2<i32>(firstTrailingBit(i32(-1i) * -249i), _wgslsmith_mod_i32(i32(-1i) * -1i, global0.b)), min(~u_input.a.xx, vec2<i32>(-15567i, -117510i)));
    var var_1 = select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.c, 32u)], global1[_wgslsmith_index_u32(1u, 32u)])) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(499f, 556f)))), ~firstLeadingBit(32396u) <= (_wgslsmith_div_u32(arg_2.x, 1u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 1u, arg_2.x), vec4<u32>(81933u, 0u, 31509u, arg_2.x)) % 32u)), !arg_0.x) || all(!select(vec2<bool>(global0.c, global0.c), arg_0.zy, !arg_0.ww));
    global0 = Struct_1(u_input.e, -_wgslsmith_clamp_i32(1i, -var_0.x, -2147483647i), !global0.c || false);
    let var_2 = global0.b;
    return _wgslsmith_f_op_f32(f32(-1f) * -230f);
}

fn func_1() -> u32 {
    var var_0 = !vec2<bool>(func_2(), true);
    global1 = array<f32, 32>();
    global1 = array<f32, 32>();
    var_0 = select(vec2<bool>(true, true), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(354f * 618f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, false, true, global0.c), vec3<f32>(-961f, -227f, -1058f), vec2<u32>(u_input.b.x, u_input.b.x), vec4<i32>(global0.b, u_input.a.x, 0i, 2147483647i))) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(53196u, 32u)])), true), !vec2<bool>(!(!global0.c), global0.c));
    let var_1 = Struct_1(4294967295u, ~firstTrailingBit(firstTrailingBit(min(global0.b, 2147483647i))), true);
    return firstLeadingBit(~1u);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = -2147483647i;
    var var_1 = Struct_1(_wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_clamp_u32(u_input.b.x, ~0u, 73896u)), 0u, max(reverseBits(12251u), countOneBits(~arg_2.a))), reverseBits(_wgslsmith_div_i32(11595i, ~_wgslsmith_sub_i32(-31886i, var_0))), true);
    global1 = array<f32, 32>();
    var var_2 = vec3<bool>(func_2(), false, false);
    var_1 = Struct_1(~_wgslsmith_div_u32(~global0.a, arg_2.a), select(countOneBits(-(~(-1i))), arg_0.b, arg_2.c), !(global0.b >= global0.b));
    return Struct_1(u_input.e, arg_0.b, -508f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~var_1.a, 32u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(select(vec2<bool>(false, global0.c), !vec2<bool>(global0.c, global0.c), false), select(vec2<bool>(true, global0.c), vec2<bool>(false, true), global1[_wgslsmith_index_u32(31676u, 32u)] <= -837f), global0.c | true), select(!select(vec2<bool>(false, global0.c), vec2<bool>(false, global0.c), true), vec2<bool>(all(vec4<bool>(global0.c, false, false, true)), global0.a >= u_input.b.x), !(!global0.c)), global0.c);
    let var_1 = func_4(Struct_1(min(global0.a, _wgslsmith_clamp_u32(0u, u_input.c, global0.a) >> (u_input.b.x % 32u)), 1i, global0.c), max(21988u, firstLeadingBit(_wgslsmith_mod_u32(u_input.b.x, u_input.c)) | func_1()), Struct_1(_wgslsmith_div_u32(14494u, u_input.e), -min(global0.b, _wgslsmith_mod_i32(8804i, -1i)), false));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1410f, -736f, 227f) * vec3<f32>(global1[_wgslsmith_index_u32(u_input.e, 32u)], 398f, 1086f))))))));
    let var_3 = Struct_1(4294967295u << (_wgslsmith_sub_u32(min(u_input.e, u_input.e), ~_wgslsmith_div_u32(0u, u_input.e)) % 32u), -7118i, global0.c);
    var var_4 = countOneBits(_wgslsmith_sub_i32(0i, _wgslsmith_mult_i32(reverseBits(_wgslsmith_dot_vec3_i32(u_input.a.wyx, vec3<i32>(var_3.b, global0.b, 0i))), _wgslsmith_div_i32(-53646i, var_3.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(1u, u_input.b.x) ^ func_4(Struct_1(24232u, global0.b, var_1.c), u_input.c, Struct_1(4294967295u, var_3.b, true)).a, 8423u, 1u, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(var_1.a, 4294967295u)), vec2<u32>(0u, global0.a) << (vec2<u32>(0u, 11913u) % vec2<u32>(32u)))), ~firstTrailingBit(vec4<u32>(var_1.a, global0.a, var_3.a, global0.a))), global1[_wgslsmith_index_u32(~71162u, 32u)], ~vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(13544i, 31593i), -1492i), abs(max(var_1.b, var_3.b)), _wgslsmith_mod_i32(6965i, ~u_input.a.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(~u_input.a.ww, _wgslsmith_mult_vec2_i32(u_input.a.zx, vec2<i32>(var_1.b, global0.b))), global0.b, global0.b, func_4(Struct_1(var_1.a, -58714i, false), firstTrailingBit(10426u), func_4(var_3, var_1.a, Struct_1(var_1.a, -33640i, false))).b), _wgslsmith_add_vec4_i32(max(vec4<i32>(var_1.b, global0.b, -1i, var_1.b), u_input.a), countOneBits(u_input.a)) ^ -u_input.a));
}

