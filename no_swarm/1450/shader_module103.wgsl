struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6>;

var<private> global1: array<Struct_2, 22>;

var<private> global2: array<i32, 25>;

var<private> global3: u32 = 23665u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<bool> {
    global3 = abs(1u) | firstTrailingBit(global0[_wgslsmith_index_u32(firstTrailingBit(~select(u_input.b, u_input.b, false)), 6u)]);
    var var_0 = Struct_3(select(vec2<i32>(u_input.a.x, ~_wgslsmith_clamp_i32(13278i, 1i, 2147483647i)), u_input.a.yy, !vec2<bool>(true, any(vec3<bool>(false, false, true)))), abs(max(_wgslsmith_mult_i32(-2147483647i, global2[_wgslsmith_index_u32(4294967295u, 25u)]) | firstTrailingBit(u_input.a.x), _wgslsmith_mult_i32(reverseBits(16925i), select(u_input.a.x, 2147483647i, true)))), Struct_1(u_input.a.wzw, u_input.a.xw, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-564f + -1000f))), -530f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-400f, 1283f) * vec2<f32>(2078f, 535f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(3031f, -124f))))));
    return select(vec3<bool>(select(false, true, -15888i == ~global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], 25u)]), max(~(-2147483647i), _wgslsmith_div_i32(60174i, var_0.c.a.x)) < 1i, !(any(vec3<bool>(true, false, true)) && true)), !select(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true);
}

fn func_2(arg_0: bool, arg_1: i32) -> i32 {
    let var_0 = Struct_2(func_3());
    global3 = global0[_wgslsmith_index_u32(~u_input.b, 6u)];
    let var_1 = global1[_wgslsmith_index_u32((u_input.b | _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~20178u, ~global0[_wgslsmith_index_u32(u_input.b, 6u)]), 6u)], firstTrailingBit(global0[_wgslsmith_index_u32(~u_input.b, 6u)]), _wgslsmith_sub_u32(u_input.b << (37673u % 32u), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(14437u, 6u)], global0[_wgslsmith_index_u32(92955u, 6u)])))) & min(max(u_input.b, (global0[_wgslsmith_index_u32(40336u, 6u)] & global0[_wgslsmith_index_u32(1u, 6u)]) << (1u % 32u)), u_input.b), 22u)];
    let var_2 = var_0;
    global0 = array<u32, 6>();
    return -2147483647i;
}

fn func_1() -> Struct_1 {
    let var_0 = ~abs(vec4<u32>(min(1827u, u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(9337u, 6u)]), vec2<u32>(u_input.b, 4294967295u)), 1u, u_input.b) << (max(vec4<u32>(4294967295u, 9888u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3927u, 6u)], 6u)], 39402u), ~vec4<u32>(11677u, 4294967295u, u_input.b, 0u)) % vec4<u32>(32u)));
    let var_1 = countOneBits(u_input.a.x) ^ global2[_wgslsmith_index_u32(~0u, 25u)];
    global1 = array<Struct_2, 22>();
    global0 = array<u32, 6>();
    let var_2 = u_input.a.zw >> (firstTrailingBit(reverseBits(var_0.wx)) % vec2<u32>(32u));
    return Struct_1(~((u_input.a.yyz & select(u_input.a.zxy, vec3<i32>(1i, global2[_wgslsmith_index_u32(46438u, 25u)], -1i), vec3<bool>(true, true, false))) << (vec3<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(var_0, var_0), _wgslsmith_mult_u32(u_input.b, 28618u)) % vec3<u32>(32u))), vec2<i32>((1i & func_2(false, u_input.a.x)) | (i32(-1i) * -1i), var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1011f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-311f, _wgslsmith_f_op_f32(f32(-1f) * -871f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -117f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-972f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-424f, 265f)) + _wgslsmith_f_op_f32(f32(-1f) * -170f))), vec2<f32>(1f, 1f), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 25339i > u_input.a.x;
    let var_1 = ~(min(vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(7736u, 6u)], u_input.b, 38323u) << (vec4<u32>(u_input.b, 27331u, 4294967295u, 4294967295u) % vec4<u32>(32u)), select(vec4<u32>(u_input.b, u_input.b, 1u, 1u), vec4<u32>(u_input.b, 1u, 4376u, global0[_wgslsmith_index_u32(0u, 6u)]), vec4<bool>(false, true, true, true))) & ~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 6u)], 32620u, u_input.b)) | firstLeadingBit(vec4<u32>(1u, u_input.b, 1u, countOneBits(abs(global0[_wgslsmith_index_u32(119469u, 6u)]))));
    global3 = 0u;
    var var_2 = vec2<i32>(~(~abs(_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(u_input.b, 25u)], global2[_wgslsmith_index_u32(var_1.x, 25u)], u_input.a.x))), ~global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 6u)], 25u)]);
    let var_3 = ~1i;
    var var_4 = Struct_3(-u_input.a.xy, 51801i, func_1());
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~var_2.x);
}

