struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(27110u, 12558u, 0u), vec3<u32>(58578u, 56113u, 73251u), vec3<u32>(10065u, 11643u, 689u), vec3<u32>(7697u, 4294967295u, 0u), vec3<u32>(128424u, 4294967295u, 1u), vec3<u32>(70146u, 1506u, 60102u), vec3<u32>(22426u, 1u, 4294967295u), vec3<u32>(1u, 0u, 40552u), vec3<u32>(4294967295u, 3324u, 11954u), vec3<u32>(5436u, 4294967295u, 36437u), vec3<u32>(1u, 0u, 26069u), vec3<u32>(4294967295u, 11484u, 27360u), vec3<u32>(36202u, 25823u, 17751u), vec3<u32>(57342u, 1u, 4294967295u), vec3<u32>(1u, 55388u, 1u), vec3<u32>(14758u, 4294967295u, 0u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(1u, 1u, 9484u), vec3<u32>(34288u, 4294967295u, 1u), vec3<u32>(1u, 4294967295u, 90181u), vec3<u32>(12792u, 24076u, 11365u), vec3<u32>(10373u, 1u, 0u), vec3<u32>(0u, 1u, 1u), vec3<u32>(1u, 18103u, 51540u), vec3<u32>(10014u, 37280u, 33545u), vec3<u32>(4294967295u, 64412u, 0u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(53252u, 0u, 67292u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(8750u, 1u, 11060u), vec3<u32>(0u, 4294967295u, 95793u), vec3<u32>(1111u, 1u, 0u));

var<private> global1: u32;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    let var_0 = ~(~vec2<u32>(1u, 1u));
    global0 = array<vec3<u32>, 32>();
    let var_1 = Struct_1(var_0.x, ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 0u, 16639u) & vec3<u32>(var_0.x, var_0.x, var_0.x), global0[_wgslsmith_index_u32(max(1u, 4294967295u), 32u)]), firstTrailingBit(firstLeadingBit(global0[_wgslsmith_index_u32(4091u, 32u)]))), vec4<bool>(true, arg_0.x | all(vec3<bool>(arg_0.x, false, arg_0.x)), false, false), reverseBits(select(~vec4<u32>(var_0.x, 1u, var_0.x, var_0.x), min(vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x), vec4<u32>(4294967295u, var_0.x, var_0.x, 4916u)), select(vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<bool>(false, true, arg_0.x, false), arg_0)) << (~vec4<u32>(var_0.x, 1u, var_0.x, var_0.x) % vec4<u32>(32u))));
    global0 = array<vec3<u32>, 32>();
    let var_2 = Struct_1(_wgslsmith_sub_u32(1u, min(54165u, var_0.x)), var_0.x, vec4<bool>(arg_0.x | var_1.c.x, var_1.c.x, !(true | !arg_0.x), true), var_1.d);
    return _wgslsmith_mod_i32(countOneBits(u_input.b.x), u_input.a);
}

fn func_2() -> vec4<i32> {
    var var_0 = -2147483647i <= -u_input.b.x;
    var var_1 = 0u >> (~4294967295u % 32u);
    return vec4<i32>(reverseBits(_wgslsmith_dot_vec3_i32(max(abs(vec3<i32>(49643i, 0i, -2147483647i)), min(u_input.b, vec3<i32>(15521i, u_input.b.x, 7161i))), firstLeadingBit(min(u_input.b, vec3<i32>(-2147483647i, u_input.a, 2147483647i))))), _wgslsmith_div_i32(select(func_3(vec4<bool>(false, true, false, true)), -1i, true), 0i) | _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -3526i, -4349i), vec3<i32>(-1i, -1i, u_input.a)), countOneBits(u_input.b.x)), u_input.b.x), ~abs(_wgslsmith_mod_i32(u_input.a, firstLeadingBit(-1i))), 58379i);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> vec4<u32> {
    let var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(countOneBits(min(_wgslsmith_div_i32(arg_3.x, arg_3.x), 31354i)), 0i, _wgslsmith_div_i32(~(-56661i), _wgslsmith_add_i32(13291i, 1i) | u_input.a), reverseBits(1i)), _wgslsmith_add_vec4_i32(~func_2(), _wgslsmith_mult_vec4_i32(~select(vec4<i32>(-2147483647i, 30707i, u_input.b.x, -11830i), vec4<i32>(1139i, -48966i, arg_3.x, -27725i), vec4<bool>(false, arg_0, arg_0, arg_2.c.x)), select(firstTrailingBit(vec4<i32>(u_input.a, arg_3.x, arg_3.x, u_input.b.x)), vec4<i32>(arg_3.x, u_input.b.x, -22745i, -40970i), true))), -(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.b.x, -2147483647i, u_input.a, 1i), vec4<i32>(-16845i, arg_3.x, u_input.b.x, arg_3.x) << (arg_1.d % vec4<u32>(32u)), abs(vec4<i32>(arg_3.x, 17428i, u_input.a, 2147483647i))) << (countOneBits(arg_2.d | arg_2.d) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_f_op_f32(sign(791f)))));
    return arg_1.d;
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: f32) -> u32 {
    global1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(arg_2.d.yy, vec2<u32>(_wgslsmith_clamp_u32(1u, 40794u, _wgslsmith_mod_u32(arg_0, 21984u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(8663u, 4294967295u), select(arg_2.d.xw, arg_2.d.yx, arg_2.c.yx)))), select(_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(0u, arg_2.d.x), reverseBits(17243u)), arg_0), firstLeadingBit(4294967295u), arg_2.c.x));
    var var_0 = arg_2;
    global1 = 37456u;
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(155f, -125f, _wgslsmith_f_op_f32(trunc(arg_3))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, arg_3, 488f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1317f, arg_3, -1973f) - vec3<f32>(296f, -888f, arg_3)), select(vec3<bool>(false, true, true), var_0.c.xwy, arg_2.c.wyx))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_3, arg_3, arg_3), vec3<f32>(1106f, -822f, -1389f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(103f, 558f, arg_3))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, -803f, arg_3)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, 1011f, 2042f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1216f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(811f + arg_3), _wgslsmith_f_op_f32(select(-739f, arg_3, var_0.c.x)), arg_2.c.x)), _wgslsmith_f_op_f32(-arg_3)))));
    global0 = array<vec3<u32>, 32>();
    return 1776u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(9143u, _wgslsmith_mult_vec4_i32(~(-vec4<i32>(-27394i, u_input.b.x, 33556i, 1i) >> (func_1(true, Struct_1(32648u, 51843u, vec4<bool>(true, true, true, false), vec4<u32>(4294967295u, 52565u, 16996u, 0u)), Struct_1(47815u, 4294967295u, vec4<bool>(false, false, true, false), vec4<u32>(1u, 4294967295u, 1u, 3169u)), u_input.b) % vec4<u32>(32u))), ~abs(~vec4<i32>(-1i, u_input.b.x, -1i, 43313i))), Struct_1(9756u, 1u, vec4<bool>(any(vec2<bool>(true, true)) || true, false, true, true), vec4<u32>(19348u, countOneBits(0u), 1u, 1u)), _wgslsmith_f_op_f32(373f - _wgslsmith_f_op_f32(f32(-1f) * -384f)));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(-642f, -271f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2185f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 354f)))));
    global1 = func_4(~(~_wgslsmith_add_u32(23026u, 34383u)), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(reverseBits(~vec4<i32>(u_input.a, 1i, -69875i, 65231i)), ~vec4<i32>(u_input.b.x, 1926i, -8345i, -21227i), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(u_input.a, u_input.b.x, ~u_input.a, func_3(vec4<bool>(false, false, false, true)))), Struct_1(70734u, reverseBits(_wgslsmith_clamp_u32(_wgslsmith_div_u32(23255u, 37773u), ~17371u, ~0u)), select(vec4<bool>(true, 2147483647i > u_input.a, true, true), vec4<bool>(true, all(vec2<bool>(false, false)), true, all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~33011u, abs(1u), _wgslsmith_add_u32(20258u, 19026u), ~0u))), var_0.x);
    global0 = array<vec3<u32>, 32>();
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(-1277f)), _wgslsmith_f_op_f32(-var_0.x));
    global0 = array<vec3<u32>, 32>();
    let var_1 = true;
    global1 = 1u;
    let var_2 = vec4<bool>(any(select(select(vec2<bool>(false, true), !vec2<bool>(var_1, var_1), select(vec2<bool>(true, false), vec2<bool>(var_1, var_1), var_1)), select(!vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), !var_1), false)), !(!all(select(vec3<bool>(true, false, var_1), vec3<bool>(var_1, true, false), true))), true, var_1);
    let x = u_input.a;
    s_output = StorageBuffer(41505i);
}

