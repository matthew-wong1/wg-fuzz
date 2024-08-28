struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: i32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(1400f, 1824f, 237f, -704f, -289f, -1000f, -947f, -782f, -1628f, 521f, 519f, -994f, -594f, -1117f, -187f, -1000f, 668f, 474f, 1312f, -470f, -1688f, -310f, 347f, 1094f, -544f, -641f);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> f32 {
    let var_0 = ~(~_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.b, 0u, 1u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 38296u)), 4294967295u, u_input.b << (u_input.b % 32u)), min(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 73482u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 50757u, u_input.b), vec3<u32>(u_input.b, u_input.b, 9753u)))));
    var var_1 = _wgslsmith_div_vec4_i32(~vec4<i32>(select(~u_input.a, max(13805i, u_input.a), any(vec3<bool>(true, false, true))), u_input.a << (72426u % 32u), u_input.a, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(0i, u_input.a), countOneBits(-2147483647i), _wgslsmith_clamp_i32(-59544i, -2147483647i, 0i))), -vec4<i32>(u_input.a, u_input.a, u_input.a, -1i));
    let var_2 = !(!(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)))));
    let var_3 = firstLeadingBit(vec4<u32>(u_input.b, min(_wgslsmith_div_u32(u_input.b, ~62202u), firstTrailingBit(~u_input.b)), _wgslsmith_clamp_u32(abs(~u_input.b), (0u >> (var_0.x % 32u)) ^ max(4294967295u, 0u), _wgslsmith_div_u32(var_0.x, ~4294967295u)), 4294967295u));
    global0 = array<f32, 26>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-666f))))))));
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -938f), global0[_wgslsmith_index_u32(countOneBits(u_input.b), 26u)])), vec4<bool>(false, true, (all(vec2<bool>(false, false)) == any(vec3<bool>(false, true, false))) == select(true, true, true), true), vec4<u32>(3590u, u_input.b, 1u, reverseBits(16107u)));
    global0 = array<f32, 26>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_0.a.x), select(var_0.b.wwz, vec3<bool>(4294967295u < var_0.c.x, all(var_0.b.zwy), var_0.b.x | var_0.b.x), !(!vec3<bool>(true, false, var_0.b.x))), firstLeadingBit(-41785i) << ((_wgslsmith_clamp_u32(u_input.b, var_0.c.x, 3769u) & ~1u) % 32u), !select(select(var_0.b.wxz, var_0.b.wxy, var_0.b.x), vec3<bool>(true, true, true), !var_0.b.x), !(!any(var_0.b.xy))), Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.c.x, 26u)]), var_0.b.yyw, u_input.a, vec3<bool>(true, var_0.b.x, true), all(select(select(vec3<bool>(var_0.b.x, var_0.b.x, true), vec3<bool>(true, var_0.b.x, var_0.b.x), var_0.b.x), !vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), var_0.b.wzy))), ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(firstTrailingBit(4294967295u), _wgslsmith_clamp_u32(u_input.b, 54762u, var_0.c.x)), ~109270u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1205f, global0[_wgslsmith_index_u32(u_input.b, 26u)], global0[_wgslsmith_index_u32(29241u, 26u)], arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_0.c.x, 26u)], -351f, 1000f, arg_0) + vec4<f32>(-1245f, global0[_wgslsmith_index_u32(var_0.c.x, 26u)], 1082f, -215f))))));
    global0 = array<f32, 26>();
    var var_2 = u_input.b << (32229u % 32u);
    return Struct_2(var_1.a, var_1.b, reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 4294967295u), var_0.c.xyx), var_0.c.ywx | (var_0.c.ywy | vec3<u32>(u_input.b, 0u, var_1.c)))), _wgslsmith_f_op_vec4_f32(-var_1.d));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> u32 {
    global0 = array<f32, 26>();
    let var_0 = vec2<bool>(all(select(vec3<bool>(arg_1.b.d.x, all(arg_1.a.b), arg_2), !vec3<bool>(arg_0.x, true, true), func_2(arg_1.b.a).a.e)), true);
    global0 = array<f32, 26>();
    var var_1 = ~12809u;
    let var_2 = ~max(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_1.c, 0u, 102399u), abs(vec4<u32>(u_input.b, 23589u, 1u, 4294967295u)), countOneBits(vec4<u32>(0u, 1u, arg_1.c, arg_1.c))), ~vec4<u32>(32431u, 11140u, 39220u, 40243u)), vec4<u32>(~36745u, 4294967295u, ~(~18078u), arg_1.c));
    return ~21775u;
}

fn func_1() -> bool {
    var var_0 = global0[_wgslsmith_index_u32(u_input.b, 26u)];
    var_0 = 1000f;
    var var_1 = vec3<u32>(47727u, ~abs(func_4(vec4<bool>(true, false, true, false), func_2(global0[_wgslsmith_index_u32(0u, 26u)]), true, func_2(-222f).b)), u_input.b);
    let var_2 = false;
    let var_3 = ~(~_wgslsmith_mult_u32(reverseBits(select(4294967295u, 1u, false)), 0u));
    return all(vec4<bool>(any(select(!vec3<bool>(var_2, var_2, var_2), vec3<bool>(var_2, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, var_2, var_2), vec3<bool>(var_2, var_2, false)))), true, true, all(vec3<bool>(u_input.a > u_input.a, func_2(global0[_wgslsmith_index_u32(var_3, 26u)]).b.d.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 26>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(~u_input.b, 26u)])), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)), vec3<bool>(func_1(), global0[_wgslsmith_index_u32(10752u, 26u)] < global0[_wgslsmith_index_u32(4294967295u, 26u)], 1u <= u_input.b), true), vec3<bool>(true, true, !(global0[_wgslsmith_index_u32(0u, 26u)] == -1000f)), any(vec3<bool>(true, true, true))), u_input.a, select(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(25071u, 26u)] + -388f) * _wgslsmith_div_f32(-196f, -398f))).a.d, vec3<bool>(!all(vec2<bool>(false, true)), false, any(vec2<bool>(true, true))), false), select(false, true, !func_1()));
    var var_1 = var_0.d;
    var var_2 = 18761i;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-520f * global0[_wgslsmith_index_u32(4294967295u, 26u)])))) - _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(~(~4294967295u), 26u)]))) + global0[_wgslsmith_index_u32(74006u, 26u)]);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(firstTrailingBit(~vec4<u32>(68450u, u_input.b, u_input.b, 0u) & ~vec4<u32>(u_input.b, u_input.b, 0u, u_input.b))));
}

