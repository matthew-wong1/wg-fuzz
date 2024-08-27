struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(324f, 2309f);

var<private> global1: array<Struct_2, 24>;

var<private> global2: array<f32, 6>;

var<private> global3: Struct_1;

var<private> global4: array<vec2<bool>, 22> = array<vec2<bool>, 22>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: i32) -> vec4<bool> {
    var var_0 = arg_1.zzz;
    return vec4<bool>(true, true, any(vec2<bool>(true, true)) && true, 2147483647i < ~arg_3);
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: u32) -> i32 {
    var var_0 = Struct_1(~abs(u_input.a.ywx), global3.d, _wgslsmith_clamp_vec4_u32(max(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~u_input.a), vec4<u32>(arg_2, u_input.b.x << (34357u % 32u), _wgslsmith_add_u32(0u, arg_2), _wgslsmith_mod_u32(global3.c.x, arg_2))), ~vec4<u32>(firstLeadingBit(1u), 1u, 1u, _wgslsmith_sub_u32(global3.a.x, 61408u)), vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 45431u, arg_2, 1u), u_input.a), global3.a.x, firstLeadingBit(u_input.b.x), global3.a.x)), i32(-1i) * -global3.b);
    return 15100i;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1757f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1233f + _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(0u, 6u)]))), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(0u, arg_0.b.c.x, global3.a.x), 2u)])))));
    global0 = array<f32, 2>();
    global2 = array<f32, 6>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1582f * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(min(arg_0.c.x, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(countOneBits(23539u), 6u)])))) * 447f);
    global2 = array<f32, 6>();
    return select(!(!vec3<bool>(any(vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x)), true, true)), !vec3<bool>(any(vec2<bool>(false, false)), any(vec2<bool>(false, false)) == any(vec2<bool>(false, arg_0.a.x)), !(!arg_0.a.x)), func_1(Struct_3(~arg_0.b.b, 8019u), ~vec4<u32>(arg_0.b.a.x, arg_0.b.c.x & arg_1.a.x, ~u_input.a.x, _wgslsmith_sub_u32(0u, u_input.a.x)), Struct_2(arg_0.b, 1547f, vec2<u32>(arg_0.b.a.x, u_input.b.x), vec4<i32>(func_3(true, arg_0.a.x, 36735u), arg_1.b, _wgslsmith_sub_i32(25559i, arg_0.b.b), global3.b & arg_0.b.d)), ~0i).zyy);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>) -> i32 {
    global2 = array<f32, 6>();
    global4 = array<vec2<bool>, 22>();
    global3 = Struct_1(_wgslsmith_mod_vec3_u32(~vec3<u32>(~arg_1.x, min(arg_0.x, 0u), arg_1.x), _wgslsmith_sub_vec3_u32(vec3<u32>(23761u, 41159u, arg_0.x), vec3<u32>(4294967295u, u_input.a.x, global3.c.x)) << ((max(vec3<u32>(arg_0.x, 0u, 75946u), u_input.a.yzz) | firstLeadingBit(vec3<u32>(8620u, arg_0.x, 38181u))) % vec3<u32>(32u))), global3.d, vec4<u32>(26418u, abs(arg_0.x), firstLeadingBit(~abs(arg_0.x)), u_input.b.x), _wgslsmith_add_i32(-10486i, global3.b));
    var var_0 = !func_4(Struct_4(vec2<bool>(true, true), Struct_1(firstLeadingBit(vec3<u32>(16886u, 0u, 36211u)), reverseBits(global3.d), ~u_input.a, global3.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1568f, global0[_wgslsmith_index_u32(1u, 2u)], 1000f, 587f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1117f, -1535f, global2[_wgslsmith_index_u32(u_input.b.x, 6u)], global2[_wgslsmith_index_u32(global3.a.x, 6u)]) * vec4<f32>(250f, global0[_wgslsmith_index_u32(u_input.b.x, 2u)], -2364f, global0[_wgslsmith_index_u32(u_input.a.x, 2u)])))), Struct_1(vec3<u32>(47978u, _wgslsmith_mod_u32(arg_1.x, arg_0.x), 60426u), ~func_3(false, true, 56u), firstTrailingBit(select(vec4<u32>(42171u, 82534u, arg_0.x, u_input.b.x), vec4<u32>(u_input.b.x, arg_1.x, 4294967295u, 19253u), vec4<bool>(true, false, true, true))), _wgslsmith_dot_vec3_i32(vec3<i32>(global3.d, 4002i, global3.d) | vec3<i32>(global3.b, 2929i, global3.b), select(vec3<i32>(27337i, -35957i, -46339i), vec3<i32>(29657i, global3.b, global3.b), false))));
    global4 = array<vec2<bool>, 22>();
    return i32(-1i) * -1i;
}

fn func_5(arg_0: i32, arg_1: i32) -> StorageBuffer {
    var var_0 = global1[_wgslsmith_index_u32(global3.a.x, 24u)];
    var var_1 = ~_wgslsmith_mult_i32(-2147483647i, arg_1);
    global0 = array<f32, 2>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(102248u, 2u)], 127f, global2[_wgslsmith_index_u32(u_input.b.x, 6u)], -1338f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(186f, 1007f, -1000f, var_0.b) * vec4<f32>(-1344f, -531f, -765f, 371f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(135f, global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)], 649f))), vec4<bool>(true, any(vec2<bool>(true, true)), false, false))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b, 1000f, global0[_wgslsmith_index_u32(u_input.b.x, 2u)], global2[_wgslsmith_index_u32(20703u, 6u)]), vec4<f32>(-2041f, global2[_wgslsmith_index_u32(u_input.b.x, 6u)], 280f, global2[_wgslsmith_index_u32(1u, 6u)]))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(391f, 991f, -1452f, var_0.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-863f, -344f, -132f, var_0.b)))))));
    return StorageBuffer(min(global3.c.x, 18445u), 36104i, global3.c.x, 77669i);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<bool>, 22>();
    global4 = array<vec2<bool>, 22>();
    var var_0 = abs(global3.b);
    let var_1 = !select(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), vec3<bool>(any(func_1(Struct_3(2147483647i, global3.c.x), u_input.a, global1[_wgslsmith_index_u32(global3.a.x, 24u)], 0i)), (1409u & u_input.b.x) >= ~u_input.a.x, true), true);
    let var_2 = var_1;
    let x = u_input.a;
    s_output = func_5(-global3.d, func_2(firstLeadingBit(vec2<u32>(global3.c.x, global3.a.x)) << (u_input.b % vec2<u32>(32u)), global3.c.yzz));
}

