struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

var<private> global2: array<i32, 18>;

var<private> global3: array<u32, 27> = array<u32, 27>(4294967295u, 39942u, 3947u, 14548u, 4294967295u, 0u, 13266u, 44731u, 77536u, 4294967295u, 0u, 1u, 0u, 0u, 22649u, 47920u, 0u, 17159u, 74113u, 34355u, 1u, 14516u, 1u, 0u, 0u, 26522u, 0u);

var<private> global4: array<f32, 13> = array<f32, 13>(123f, 1084f, 413f, -697f, 623f, 154f, -405f, 174f, -167f, 329f, 338f, -813f, -1133f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec4<f32>) -> f32 {
    global0 = array<Struct_2, 32>();
    return global4[_wgslsmith_index_u32(countOneBits(51335u >> (arg_0.x % 32u)), 13u)];
}

fn func_2(arg_0: bool) -> u32 {
    global1 = vec3<bool>(!(!(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], 27u)], 27u)], 27u)], 27u)], 27u)] > global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)])), false, global1.x);
    let var_0 = Struct_2(Struct_1(min(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, global3[_wgslsmith_index_u32(1u, 27u)]), 27u)], _wgslsmith_dot_vec4_u32(vec4<u32>(62316u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 27u)], 27u)], 34224u, 19666u), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 27u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 27u)], 27u)], 27u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 27u)], 27u)], 16142u))) ^ global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], global4[_wgslsmith_index_u32(countOneBits(~select(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1569u, 27u)], 27u)], global1.x)), 13u)], all(vec4<bool>(true, true, true, true))), !(!(!select(vec4<bool>(false, true, true, arg_0), vec4<bool>(false, arg_0, true, global1.x), arg_0))), Struct_1(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(32643u, 27u)]), ~global3[_wgslsmith_index_u32(4294967295u, 27u)]), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(38809u, 13u)])))))), all(!select(global1.yy, global1.yy, vec2<bool>(global1.x, true)))), Struct_1(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 27u)], 27u)], 27u)], global4[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16186u, 27u)], 27u)], 27u)], 27u)], 27u)], 27u)]), 27u)], 13u)], true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~1u, 27u)], 13u)] + _wgslsmith_f_op_f32(func_3(vec2<u32>(88732u, global3[_wgslsmith_index_u32(0u, 27u)]), vec4<f32>(global4[_wgslsmith_index_u32(0u, 13u)], global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 13u)], 261f, -704f), vec4<f32>(-1896f, -778f, 776f, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 27u)], 13u)])))) * -260f))));
    let var_1 = select(vec4<bool>(true, true, ~global3[_wgslsmith_index_u32(firstTrailingBit(var_0.d.a), 27u)] < ~1u, true), select(select(!select(vec4<bool>(false, global1.x, var_0.a.c, global1.x), var_0.b, true), var_0.b, !var_0.b), vec4<bool>(global1.x, true, false, var_0.a.c), false), !vec4<bool>(false, true, !any(global1.xz), !global1.x));
    global3 = array<u32, 27>();
    global1 = var_0.b.wwx;
    return var_0.c.a;
}

fn func_4(arg_0: u32) -> vec3<bool> {
    var var_0 = Struct_1(arg_0, global4[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(arg_0, 27u)], 13u)], global1.x);
    var var_1 = _wgslsmith_mult_vec2_i32(~vec2<i32>(~(2147483647i & global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0, 27u)], 18u)]), 2147483647i), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-global2[_wgslsmith_index_u32(0u, 18u)], -6726i & u_input.a.x, _wgslsmith_div_i32(-31942i, 1i)), -_wgslsmith_dot_vec3_i32(u_input.a.yww, vec3<i32>(u_input.b.x, global2[_wgslsmith_index_u32(42460u, 18u)], 89406i))), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b.x, firstTrailingBit(-2147483647i)), -7000i)));
    let var_2 = false;
    let var_3 = -11938i;
    global3 = array<u32, 27>();
    return vec3<bool>(var_0.c, !global1.x, !all(vec4<bool>(!var_0.c, var_2 & true, false, true)));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.a, 27u)], 27u)], 27u)], 13u)], arg_0.b)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.a, 27u)], 13u)], global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.a, 27u)], 13u)])))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(min(25942u, global3[_wgslsmith_index_u32(arg_0.a, 27u)]), 13u)], _wgslsmith_f_op_f32(f32(-1f) * -2085f)))));
    global1 = func_4(max(reverseBits(func_2(!arg_0.c)), ~(~(~0u))));
    return global0[_wgslsmith_index_u32(firstLeadingBit(~(~22372u) << (~(~firstTrailingBit(60949u)) % 32u)), 32u)];
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    global0 = array<Struct_2, 32>();
    let var_0 = _wgslsmith_f_op_f32(-arg_2.d.b);
    global2 = array<i32, 18>();
    let var_1 = -vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, -54344i), firstLeadingBit(_wgslsmith_sub_i32(25191i, arg_0.x))), 2147483647i);
    return 7366u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10833u, 27u)], 13u)];
    var var_1 = Struct_1(func_5(reverseBits(~_wgslsmith_mult_vec3_i32(u_input.b, u_input.b)), func_1(Struct_1(global3[_wgslsmith_index_u32(1u, 27u)], 1136f, true)), global0[_wgslsmith_index_u32(func_1(func_1(Struct_1(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 1552f, true)).d).a.a, 32u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(4294967295u, 13u)], global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 27u)], 13u)], false)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(84598u, 27u)], 27u)], 13u)]))), _wgslsmith_div_f32(1000f, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(34001u, 27u)], 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 27u)], 27u)], 27u)], 79227u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(2825u, 27u)], 27u)], global3[_wgslsmith_index_u32(16952u, 27u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(31123u, 27u)], 27u)], 27u)], 27u)])), 13u)]))), global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~global3[_wgslsmith_index_u32(0u, 27u)] | 43114u), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, global3[_wgslsmith_index_u32(var_1.a, 27u)]), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1.a, 27u)], 27u)], 0u, global3[_wgslsmith_index_u32(97773u, 27u)])) >> (abs(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(59623u, 27u)], 27u)], 36178u, 38215u)) % vec3<u32>(32u)), ~(~vec3<u32>(var_1.a, 1u, 46267u))), 27u)], 27u)], var_1.a, 0u >> (_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(38258u, 27u)], 27u)]), vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(var_1.a, 27u)], global3[_wgslsmith_index_u32(var_1.a, 27u)]), vec3<bool>(var_1.c, global1.x, false)), ~vec3<u32>(37777u, 1u, 0u)) % 32u)), ~vec4<u32>(0u, 1u, 0u, ~0u));
}

