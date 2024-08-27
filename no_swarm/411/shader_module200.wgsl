struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_5) -> u32 {
    global0 = array<bool, 3>();
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(~countOneBits(_wgslsmith_mod_u32(u_input.d.x, ~20734u)), 3u)], !(-23072i < ~(u_input.b.x >> (4294967295u % 32u))));
    return 0u;
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> vec4<i32> {
    return select(vec4<i32>(-arg_0.x, arg_0.x, 2147483647i, u_input.a), -vec4<i32>(_wgslsmith_sub_i32(firstLeadingBit(-13415i), 0i), arg_0.x, _wgslsmith_mult_i32(arg_0.x, arg_0.x) >> (arg_1 % 32u), 1i), vec4<bool>(global0[_wgslsmith_index_u32(func_2(Struct_5(1f)), 3u)], true, any(vec3<bool>(false, all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(arg_1, 3u)], global0[_wgslsmith_index_u32(5293u, 3u)])), true)), any(vec4<bool>(global0[_wgslsmith_index_u32(abs(39487u), 3u)], true, arg_1 == u_input.d.x, all(vec2<bool>(true, true))))));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: Struct_2) -> u32 {
    let var_0 = arg_2.a;
    var var_1 = arg_3.a;
    var var_2 = !((!any(vec2<bool>(false, true)) && arg_3.c.x) || (~(~var_1.x) < _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(56258u, arg_3.a.x, u_input.c, 1u), vec4<u32>(42830u, var_1.x, 64526u, 7910u), vec4<u32>(var_1.x, 4294967295u, var_1.x, u_input.c)), vec4<u32>(10850u, 4294967295u, u_input.d.x, u_input.c))));
    var var_3 = Struct_5(_wgslsmith_f_op_f32(1867f + arg_0));
    let var_4 = arg_3;
    return var_4.a.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: Struct_4) -> Struct_1 {
    var var_0 = -1660f;
    let var_1 = (arg_0.x != 1i) || all(vec4<bool>(true && (arg_3.b.x < 429f), !(arg_3.c <= 27725u), true, firstLeadingBit(-17377i) >= ~u_input.b.x));
    let var_2 = ~_wgslsmith_clamp_vec4_u32(select(vec4<u32>(abs(u_input.d.x), _wgslsmith_mult_u32(u_input.c, 69507u), 44550u, arg_3.c | 0u), reverseBits(vec4<u32>(0u, arg_3.c, 50707u, arg_3.c)), arg_2.x), ~vec4<u32>(39855u, arg_3.c, ~39608u, func_2(Struct_5(arg_3.b.x))), ~vec4<u32>(~52412u, arg_3.c, ~0u, u_input.c));
    var var_3 = -38028i;
    let var_4 = ~reverseBits(reverseBits(vec2<u32>(~4458u, 4294967295u)));
    return Struct_1(arg_2.x, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 3>();
    var var_0 = Struct_3(func_4(~func_1(u_input.b, _wgslsmith_sub_u32(u_input.d.x, u_input.c)), Struct_3(Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d.x, 1u), 3u)], global0[_wgslsmith_index_u32(~1u, 3u)]), Struct_1(true, !global0[_wgslsmith_index_u32(1u, 3u)])), vec4<bool>(false, true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.c), vec2<u32>(u_input.c, u_input.c)), 3u)], !global0[_wgslsmith_index_u32(1u, 3u)] | false), Struct_4(vec2<bool>(true, true), vec3<f32>(_wgslsmith_f_op_f32(-918f * 308f), _wgslsmith_f_op_f32(704f - -749f), _wgslsmith_f_op_f32(f32(-1f) * -1050f)), func_3(_wgslsmith_f_op_f32(abs(375f)), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 3u)], false, global0[_wgslsmith_index_u32(u_input.d.x, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)]), Struct_3(Struct_1(true, global0[_wgslsmith_index_u32(33657u, 3u)]), Struct_1(true, true)), Struct_2(vec2<u32>(22248u, u_input.d.x), global0[_wgslsmith_index_u32(1u, 3u)], vec4<bool>(true, global0[_wgslsmith_index_u32(22424u, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)], true), u_input.b.zx)))), func_4(~func_1(u_input.b & vec3<i32>(u_input.a, u_input.a, u_input.b.x), u_input.d.x), Struct_3(func_4(vec4<i32>(2147483647i, 56564i, u_input.b.x, u_input.a), Struct_3(Struct_1(global0[_wgslsmith_index_u32(84757u, 3u)], true), Struct_1(false, true)), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(u_input.d.x, 3u)], false, false), vec4<bool>(true, false, global0[_wgslsmith_index_u32(30177u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], true, global0[_wgslsmith_index_u32(u_input.d.x, 3u)])), Struct_4(vec2<bool>(true, true), vec3<f32>(-792f, -150f, -946f), u_input.c)), Struct_1(all(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)])), true)), vec4<bool>(global0[_wgslsmith_index_u32(31236u, 3u)], all(vec3<bool>(false, true, true)), true, true && global0[_wgslsmith_index_u32(min(98824u, 94005u), 3u)]), Struct_4(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 3u)], true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 3u)], true), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(u_input.d.x, 3u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(549f, 972f, 1109f), vec3<f32>(181f, 225f, -307f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-308f, 585f, -144f), vec3<f32>(-1151f, 367f, 174f))), 1u)));
    var var_1 = var_0.b.a;
    var var_2 = var_0.a;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-529f, -611f))))) * -488f);
    global0 = array<bool, 3>();
    var_1 = all(!vec2<bool>(_wgslsmith_f_op_f32(min(var_3, -1000f)) >= _wgslsmith_f_op_f32(-var_3), !global0[_wgslsmith_index_u32(~u_input.d.x, 3u)]));
    let x = u_input.a;
    s_output = StorageBuffer(101886u, vec3<f32>(var_3, var_3, _wgslsmith_f_op_f32(var_3 + -114f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, var_3, var_3) * vec3<f32>(var_3, -1980f, -404f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1000f, var_3), vec3<f32>(-877f, -485f, var_3))) + vec3<f32>(_wgslsmith_f_op_f32(-var_3), -1364f, -1000f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, -826f, -1000f), vec3<f32>(var_3, 1946f, var_3))), vec3<f32>(var_3, 1000f, var_3))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-357f, var_3, var_3)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3, var_3, -1000f))), true || global0[_wgslsmith_index_u32(u_input.c, 3u)])))), firstLeadingBit(vec2<u32>(22970u, firstTrailingBit(u_input.d.x))));
}

