struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 27>;

var<private> global1: array<i32, 27>;

var<private> global2: vec4<f32> = vec4<f32>(839f, 997f, -294f, -2020f);

var<private> global3: vec4<f32> = vec4<f32>(1011f, -574f, -199f, 1069f);

var<private> global4: array<u32, 9> = array<u32, 9>(50004u, 35944u, 0u, 4294967295u, 0u, 45424u, 42200u, 1u, 35175u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool) -> vec4<u32> {
    var var_0 = arg_1.b.a.x;
    var_0 = 0i;
    global3 = vec4<f32>(_wgslsmith_f_op_f32(-229f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), -1227f, -2023f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-773f))))))));
    var var_1 = _wgslsmith_clamp_vec2_u32(arg_0.a.a.ww, select(vec2<u32>(50144u << (countOneBits(global4[_wgslsmith_index_u32(4294967295u, 9u)]) % 32u), ~1u), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(u_input.c, 9u)], arg_0.a.a.x), _wgslsmith_dot_vec3_u32(arg_0.a.a.wzy, vec3<u32>(0u, 1u, 8976u))), select(~vec2<u32>(arg_0.a.a.x, arg_0.a.a.x), global0[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(25999u, 9u)], 27u)], any(vec2<bool>(arg_2, true)))), vec2<bool>(true, arg_2)), _wgslsmith_sub_vec2_u32(min(~vec2<u32>(arg_1.a.x, 4294967295u), vec2<u32>(68456u, u_input.c)), vec2<u32>(14646u, 1u) | (arg_0.a.a.wx & arg_1.a.xy)) << (vec2<u32>(arg_1.a.x, (arg_1.a.x >> (8094u % 32u)) & ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)]) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3.x, -531f, 986f))) - vec3<f32>(global3.x, 508f, global3.x)), _wgslsmith_f_op_vec3_f32(-global2.wzw))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-418f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(sign(-288f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, 1633f, 1000f) * global3.wyy), _wgslsmith_f_op_vec3_f32(vec3<f32>(-707f, 107f, 1000f) + vec3<f32>(-412f, global3.x, 419f)))))));
    return arg_0.a.a;
}

fn func_2() -> i32 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_div_vec4_u32(~reverseBits(vec4<u32>(u_input.c, 7013u, global4[_wgslsmith_index_u32(u_input.c, 9u)], 47123u)), _wgslsmith_div_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 9u)], 9u)], global4[_wgslsmith_index_u32(89828u, 9u)], 1u, 31126u), func_3(Struct_3(Struct_2(vec4<u32>(u_input.c, 36922u, u_input.c, 52803u), Struct_1(vec4<i32>(u_input.d, u_input.e.x, 0i, 2147483647i))), u_input.e, vec3<bool>(true, true, false)), Struct_2(vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 9u)], global4[_wgslsmith_index_u32(1u, 9u)], u_input.c, global4[_wgslsmith_index_u32(u_input.c, 9u)]), Struct_1(u_input.e)), false))), Struct_1(-(vec4<i32>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(9031u, 9u)], 27u)], u_input.e.x, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(64781u, 9u)], 27u)], 11568i) ^ vec4<i32>(u_input.e.x, u_input.d, 0i, 3796i)))), -(u_input.e | vec4<i32>(global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)], u_input.b, 31457i)) << (vec4<u32>(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c, 9u)], 9u)] | 23455u, ~u_input.c), ~(~global4[_wgslsmith_index_u32(u_input.c, 9u)]), 20663u, 1u) % vec4<u32>(32u)), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false)), vec3<bool>(true, true, all(vec2<bool>(false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)))));
    let var_1 = var_0;
    var var_2 = _wgslsmith_sub_u32(u_input.c, select(32869u, u_input.c, any(vec3<bool>(true, true, all(vec3<bool>(false, var_1.c.x, false))))));
    let var_3 = var_0.a.a.x;
    let var_4 = (-1i > (0i << (var_3 % 32u))) & (var_1.c.x & all(vec3<bool>(false, true, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_0.a.a.x, 9u)], 9u)], 27u)] < u_input.d)));
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(var_0.a.a.zww), min(abs(var_1.a.a.wzy), abs(firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.a.x, 10262u, 33490u), var_1.a.a.wwz))))), 27u)];
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = !((6616i == ~func_2()) | (-u_input.b < 2147483647i));
    global0 = array<vec2<u32>, 27>();
    global2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-757f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(floor(-676f)), true))), 1404f, _wgslsmith_f_op_f32(f32(-1f) * -794f))));
    var var_1 = ~(arg_0.a.yw & vec2<u32>(u_input.c, global4[_wgslsmith_index_u32(1u, 9u)]));
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-global3.x)), global3.x, global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - global3.x)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1171f))), _wgslsmith_f_op_f32(-148f + _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(global2.x + global2.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-883f * global3.x) * _wgslsmith_f_op_f32(ceil(global3.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-930f - global3.x))));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(abs(var_1.x), arg_0.a.x ^ 1u) ^ 0u, ~4294967295u), vec2<u32>(firstLeadingBit(~44565u), _wgslsmith_dot_vec2_u32(max(arg_0.a.xz, arg_0.a.yx), arg_0.a.xy)) >> (arg_0.a.zw % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~global0[_wgslsmith_index_u32(u_input.c, 27u)], global0[_wgslsmith_index_u32(0u, 27u)] & vec2<u32>(u_input.c, global4[_wgslsmith_index_u32(45034u, 9u)])), vec2<u32>(u_input.c, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c, 9u)], 9u)]) & (vec2<u32>(u_input.c, 1u) ^ vec2<u32>(12614u, global4[_wgslsmith_index_u32(u_input.c, 9u)]))) >> (_wgslsmith_clamp_u32(func_1(Struct_2(vec4<u32>(global4[_wgslsmith_index_u32(0u, 9u)], 4294967295u, global4[_wgslsmith_index_u32(u_input.c, 9u)], 0u), Struct_1(vec4<i32>(2202i, u_input.b, global1[_wgslsmith_index_u32(15912u, 27u)], -16340i)))), 4294967295u, ~firstTrailingBit(1u)) % 32u), u_input.c & global4[_wgslsmith_index_u32(max(~firstLeadingBit(global4[_wgslsmith_index_u32(0u, 9u)]), ~32870u), 9u)]);
    var var_1 = u_input.a.xy;
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(466f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1064f, global2.x))), 247f))));
    let var_3 = u_input.c;
    var var_4 = Struct_1(u_input.e);
    var var_5 = global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c, 9u)], 9u)], 9u)], var_3, global4[_wgslsmith_index_u32(58680u, 9u)]), vec3<u32>(4294967295u, var_3, 17965u))), 9u)], var_3) & _wgslsmith_mult_u32(min(u_input.c, 23101u | var_3), 6957u)), 27u)];
    global0 = array<vec2<u32>, 27>();
    var var_6 = !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true)));
    let x = u_input.a;
    s_output = StorageBuffer(min(~_wgslsmith_mult_vec3_u32(~vec3<u32>(global4[_wgslsmith_index_u32(u_input.c, 9u)], 27491u, var_3), vec3<u32>(global4[_wgslsmith_index_u32(var_0.x, 9u)], 0u, var_0.x)), (_wgslsmith_add_vec3_u32(vec3<u32>(66596u, 17743u, 22459u), vec3<u32>(var_3, 26488u, var_3)) | abs(vec3<u32>(var_0.x, 0u, var_5.x))) ^ ~(vec3<u32>(u_input.c, u_input.c, u_input.c) & vec3<u32>(0u, 36385u, 1u))), _wgslsmith_dot_vec3_u32(vec3<u32>(max(var_5.x, _wgslsmith_mod_u32(66126u, 1u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_3, var_5.x, 32818u), vec3<u32>(var_5.x, 39228u, 25986u)), 4294967295u), vec3<u32>(27766u, 4294967295u, 0u) << (~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 5900u, var_5.x), vec3<u32>(40761u, u_input.c, var_0.x)) % vec3<u32>(32u))));
}

