struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(false, vec3<f32>(-176f, -687f, -623f), 1000f), Struct_4(false, vec3<f32>(1078f, -635f, -1179f), -1142f), Struct_4(false, vec3<f32>(866f, 1000f, 1000f), -172f), Struct_4(true, vec3<f32>(-1000f, 372f, 961f), -195f), Struct_4(true, vec3<f32>(520f, 955f, 1972f), -273f), Struct_4(false, vec3<f32>(811f, 1155f, 1306f), -997f), Struct_4(true, vec3<f32>(-496f, 901f, -1105f), -214f), Struct_4(true, vec3<f32>(-662f, -349f, -591f), 905f), Struct_4(false, vec3<f32>(1020f, -1906f, 488f), -1000f));

var<private> global2: array<f32, 16> = array<f32, 16>(1150f, -486f, 622f, 199f, -426f, 580f, 797f, -861f, 1546f, 374f, 862f, 1981f, -1732f, 1000f, -622f, -464f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32) -> vec2<bool> {
    global0 = ~u_input.a;
    var var_0 = u_input.d.x;
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.d.x, 16u)] - global2[_wgslsmith_index_u32(u_input.d.x, 16u)]), 685f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(31821u, 16u)])) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(39809u, 16u)], 575f, global2[_wgslsmith_index_u32(u_input.d.x, 16u)]) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 16u)], -888f, -771f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(33946u, 16u)], 1824f)) * vec2<f32>(-107f, global2[_wgslsmith_index_u32(5990u, 16u)])), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(790f, -2326f) + vec2<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 16u)], 862f)))), true)), _wgslsmith_f_op_f32(895f * -1000f), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(18284u, 16u)] - global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.d, ~u_input.d), 16u)])), vec3<bool>(true, !(_wgslsmith_f_op_f32(min(271f, -657f)) < global2[_wgslsmith_index_u32(36501u | u_input.d.x, 16u)]), false));
    global1 = array<Struct_4, 9>();
    var_0 = 1u;
    return select(select(!var_1.b.xy, vec2<bool>(any(var_1.b.zx), any(var_1.a.d)), true), !(!(!vec2<bool>(false, var_1.b.x))), vec2<bool>(var_1.b.x && true, all(vec2<bool>(any(vec2<bool>(var_1.b.x, false)), !var_1.b.x))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.d.wy, select(vec2<u32>(u_input.b, u_input.b), _wgslsmith_mult_vec2_u32(u_input.d.yw, u_input.d.ww), func_3(u_input.a.x))) | ~(~(~u_input.d.x)), 16u)], Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 16u)]), _wgslsmith_div_f32(464f, -586f))), arg_1.a.yx, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1383f), _wgslsmith_f_op_f32(arg_1.b.x - global2[_wgslsmith_index_u32(u_input.d.x, 16u)])))), vec2<bool>(false, !(false | arg_1.d.x)), global2[_wgslsmith_index_u32(u_input.d.x, 16u)]), _wgslsmith_mult_i32(((-16318i >> (0u % 32u)) << (_wgslsmith_add_u32(u_input.d.x, 6388u) % 32u)) ^ arg_0.x, firstTrailingBit(abs(-2147483647i)) << (min(u_input.d.x & 63817u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 1u), vec2<u32>(1u, u_input.d.x))) % 32u)));
    let var_1 = true;
    var_0 = Struct_2(_wgslsmith_f_op_f32(floor(-178f)), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -455f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(2507u, 16u)] + 1251f), _wgslsmith_f_op_f32(select(1212f, -1606f, true))), arg_1.a, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(2640u, 16u)]), -1479f)), 285f, func_3(2147483647i), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.d.x, 16u)] * 1f)), u_input.a.x);
    let var_2 = Struct_3(arg_1, vec3<bool>(!var_0.b.d.x & all(vec2<bool>(arg_1.d.x, arg_1.d.x)), all(!select(vec4<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x, false), vec4<bool>(var_0.b.d.x, var_0.b.d.x, true, true), vec4<bool>(var_0.b.d.x, true, arg_1.d.x, true))), true));
    var var_3 = vec4<i32>(_wgslsmith_clamp_i32(global0.x | _wgslsmith_add_i32(-2585i, arg_0.x), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-20115i, 2147483647i, 2147483647i, 10200i), vec4<i32>(var_0.c, u_input.a.x, -25434i, -84380i), arg_1.d.x), ~vec4<i32>(1i, 1i, global0.x, 2147483647i)), global0.x) >> (reverseBits(~4294967295u) % 32u), -global0.x, -1i, 252i);
    return var_0.c;
}

fn func_1() -> f32 {
    var var_0 = (_wgslsmith_mod_vec4_i32(vec4<i32>(func_2(u_input.a.zy, Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 16u)], -173f, 1194f), vec2<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 16u)], -1180f), -285f, vec2<bool>(false, false), 1000f)), -50717i, firstTrailingBit(-46981i), _wgslsmith_sub_i32(3797i, global0.x)), vec4<i32>(~u_input.a.x, 1i, u_input.a.x, firstTrailingBit(-1i))) ^ abs(~vec4<i32>(-2147483647i, u_input.c, u_input.a.x, 47899i) << (vec4<u32>(1u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)))) >> (_wgslsmith_add_vec4_u32(abs(~(~vec4<u32>(50882u, 31449u, u_input.b, 4294967295u))), ~vec4<u32>(24178u, u_input.b, 4294967295u, 4294967295u) & ~select(vec4<u32>(u_input.b, 0u, 78003u, 4294967295u), vec4<u32>(1u, 76296u, u_input.b, 16457u), vec4<bool>(true, false, true, false))) % vec4<u32>(32u));
    var var_1 = vec3<i32>(-_wgslsmith_mult_i32(_wgslsmith_div_i32(1i, -u_input.a.x), select(-2147483647i, firstLeadingBit(-21469i), func_3(u_input.a.x).x)), -1i, abs(_wgslsmith_dot_vec4_i32(-countOneBits(vec4<i32>(var_0.x, -57874i, u_input.c, -12983i)), ~firstTrailingBit(vec4<i32>(-1i, 2147483647i, u_input.a.x, u_input.c)))));
    var_1 = ~vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(abs(var_1.xz), vec2<i32>(var_0.x, 0i) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u))), var_1.x), select(_wgslsmith_mod_i32(u_input.c, var_0.x) | max(var_1.x, global0.x), u_input.c & (i32(-1i) * -2147483647i), global2[_wgslsmith_index_u32(u_input.b, 16u)] < global2[_wgslsmith_index_u32(66306u, 16u)]), countOneBits(var_0.x));
    global0 = vec3<i32>(~var_1.x, _wgslsmith_add_i32(abs(var_0.x), var_0.x), i32(-1i) * -42460i);
    let var_2 = select(!vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, 704u, 0u), 16u)] >= _wgslsmith_div_f32(global2[_wgslsmith_index_u32(42834u, 16u)], 1471f), true), !vec2<bool>(all(vec4<bool>(true, true, true, true)) | true, all(select(vec2<bool>(false, true), vec2<bool>(false, false), false))), false);
    return _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.d.x, 16u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(((u_input.a.x << (4294967295u % 32u)) > u_input.c) || (u_input.b != u_input.d.x)));
    var var_1 = global0.x;
    var var_2 = Struct_4(!(false && var_0), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1097f + global2[_wgslsmith_index_u32(1u, 16u)]) + 1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1000f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(164f - 1151f), _wgslsmith_f_op_f32(sign(-1799f)), _wgslsmith_f_op_f32(floor(1070f))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-1057f)), -1000f, _wgslsmith_div_f32(765f, -151f)), var_0)), var_0)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b & firstTrailingBit(u_input.b), _wgslsmith_add_u32(u_input.b, 53160u)) | 4294967295u, 16u)]);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-699f, _wgslsmith_f_op_f32(func_1())) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1644f, global2[_wgslsmith_index_u32(u_input.b, 16u)])))) + global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~1282u, u_input.b), 16u)])), Struct_1(var_2.b, _wgslsmith_f_op_vec2_f32(var_2.b.xz * _wgslsmith_f_op_vec2_f32(trunc(var_2.b.yy))), _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.b ^ (u_input.b >> (4294967295u % 32u)), 16u)], _wgslsmith_div_f32(global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(u_input.b << (1u % 32u), 16u)]))), !select(vec2<bool>(var_2.a, var_2.a), vec2<bool>(var_2.a, true), vec2<bool>(var_0, var_0)), _wgslsmith_f_op_f32(func_1())), ~(~global0.x));
    let var_4 = u_input.d.x;
    let var_5 = Struct_2(871f, var_3.b, -24864i);
    let var_6 = Struct_2(global2[_wgslsmith_index_u32(abs(u_input.d.x), 16u)], var_3.b, i32(-1i) * -13972i);
    var_2 = Struct_4(var_0, vec3<f32>(var_6.b.b.x, 329f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-906f)), _wgslsmith_f_op_f32(-var_5.a))) - -398f)), _wgslsmith_f_op_f32(var_5.a - 408f));
    var var_7 = Struct_3(var_6.b, !vec3<bool>(true, false, true || select(false, true, var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.d.yzz << (~min(u_input.d.wxy, u_input.d.xxx) % vec3<u32>(32u))), vec3<u32>(u_input.b, 4294967295u, (var_4 & 1u) << (var_4 % 32u)) << (~u_input.d.yzz % vec3<u32>(32u)), _wgslsmith_mult_i32(_wgslsmith_div_i32(~var_3.c, _wgslsmith_mod_i32(29631i, 2147483647i)), global0.x) << ((54665u ^ var_4) % 32u));
}

