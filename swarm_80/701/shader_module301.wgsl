struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 29> = array<f32, 29>(-2170f, -561f, -1262f, 2143f, 215f, 895f, -2696f, 1657f, 356f, -601f, -1487f, -2024f, 124f, 250f, 611f, 676f, -501f, 1896f, 1000f, 794f, -184f, 383f, 640f, -1431f, 711f, -1213f, -584f, 2754f, -1964f);

var<private> global2: vec4<bool>;

var<private> global3: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(4294967295u, 5264u), vec2<u32>(19415u, 11613u), vec2<u32>(41270u, 35229u), vec2<u32>(21092u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 40331u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(27971u, 46501u), vec2<u32>(21344u, 70680u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(766u, 9119u), vec2<u32>(1u, 10587u), vec2<u32>(4294967295u, 0u), vec2<u32>(7551u, 72536u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: vec2<bool>) -> vec2<f32> {
    var var_0 = select(u_input.c, vec4<u32>(u_input.b >> (1u % 32u), 1u, u_input.c.x, u_input.b), arg_3.x);
    let var_1 = vec3<i32>(_wgslsmith_clamp_i32(u_input.a, 1i, _wgslsmith_mult_i32(1i, 0i)) >> (select(max(0u, var_0.x), _wgslsmith_div_u32(u_input.c.x, u_input.b), true) % 32u), _wgslsmith_add_i32(2147483647i << (~4294967295u % 32u), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(0i, u_input.a, 0i))), min(u_input.a >> (0u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -46128i, -2988i), vec4<i32>(36777i, 53039i, -29751i, -1i))) & -2147483647i) | firstLeadingBit(vec3<i32>(0i, u_input.a, _wgslsmith_mult_i32(u_input.a & u_input.a, firstLeadingBit(u_input.a))));
    let var_2 = min(1i, _wgslsmith_mod_i32(var_1.x, var_1.x)) >> (52660u % 32u);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(2359f, 715f), vec2<f32>(-202f, arg_1))))))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(u_input.b, 29u)]))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2, -3308f)))))));
}

fn func_4(arg_0: Struct_1) -> vec4<i32> {
    global2 = !vec4<bool>(global2.x & arg_0.b.x, (u_input.b ^ countOneBits(11557u)) > countOneBits(4294967295u), select(true, arg_0.b.x, all(vec3<bool>(true, global2.x, arg_0.c))), true);
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, ~firstTrailingBit(u_input.b ^ 80064u), ~((57659u >> (u_input.c.x % 32u)) << (u_input.b % 32u))), ~u_input.c.zyz);
    var var_1 = var_0;
    var_1 = u_input.b;
    var var_2 = ~vec3<i32>(~abs(min(u_input.a, -2147483647i)), u_input.a, 1i & firstTrailingBit(-46936i));
    return vec4<i32>(~10996i, ~(~u_input.a | _wgslsmith_div_i32(var_2.x, -2147483647i)) ^ -(-var_2.x >> (_wgslsmith_mod_u32(7556u, u_input.c.x) % 32u)), min(~(~0i), -u_input.a ^ u_input.a), ~u_input.a ^ _wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.x, u_input.a, -1i), vec3<i32>(-62846i, -38377i, 0i)), _wgslsmith_div_vec3_i32(-vec3<i32>(var_2.x, 1i, 30366i), vec3<i32>(var_2.x, 1i, var_2.x))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_2) -> bool {
    var var_0 = arg_3;
    let var_1 = abs(vec4<i32>(~arg_2.x, 44167i, 0i, arg_2.x) ^ func_4(Struct_1(_wgslsmith_f_op_vec2_f32(func_3(arg_3.a.x, arg_0.a.x, global1[_wgslsmith_index_u32(u_input.c.x, 29u)], vec2<bool>(false, true))), arg_3.a.ww, true)));
    global1 = array<f32, 29>();
    var var_2 = arg_0;
    let var_3 = arg_3;
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<i32>((-u_input.a & (i32(-1i) * -1i)) << (abs(firstTrailingBit(~u_input.b)) % 32u), _wgslsmith_mult_i32(-14288i, u_input.a));
    let var_1 = 21622i;
    let var_2 = true;
    let var_3 = 31382i;
    var var_4 = u_input.c.x;
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 29u)], -926f) * vec2<f32>(global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(17623u, 29u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(5251u, 29u)], -2363f))) * vec2<f32>(global1[_wgslsmith_index_u32(~(~30270u), 29u)], 1331f)), select(!select(vec2<bool>(global2.x, true), select(global2.yy, global2.ww, global2.yz), vec2<bool>(false, false)), !vec2<bool>(true, func_2(Struct_1(vec2<f32>(global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)]), global2.ww, false), 1000f, vec2<i32>(var_3, 0i), Struct_2(vec4<bool>(global2.x, var_2, global2.x, true)))), false), global2.x);
}

fn func_5(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_2(!select(!select(vec4<bool>(true, global2.x, true, true), vec4<bool>(arg_2.c, global2.x, global2.x, global2.x), vec4<bool>(false, arg_2.c, global2.x, arg_2.c)), select(!vec4<bool>(false, global2.x, true, global2.x), !vec4<bool>(arg_2.c, arg_2.c, true, arg_2.c), !vec4<bool>(false, global2.x, global2.x, global2.x)), vec4<bool>(any(vec4<bool>(global2.x, global2.x, false, true)), true, arg_2.b.x, !arg_2.c)));
    var var_1 = var_0;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - -385f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1203f)) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~4294967295u, 29u)] * global1[_wgslsmith_index_u32(abs(9749u), 29u)]))), _wgslsmith_f_op_f32(round(-547f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-187f, 1283f)), arg_2.a.x))))));
    let var_3 = _wgslsmith_f_op_f32(ceil(arg_1)) == _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-1f));
    var var_4 = Struct_2(var_1.a);
    return 2134f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(~u_input.c.zxw, global1[_wgslsmith_index_u32(1u, 29u)], func_1()))) < global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 29u)], true || select(true, false, true), global2.x);
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(43638u, 29u)], -614f), vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 29u)], 781f), vec2<bool>(false, global2.x))), vec2<f32>(global1[_wgslsmith_index_u32(24299u, 29u)], 290f), all(vec2<bool>(global2.x, global2.x))))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(25372u, 29u)]) + vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], -1530f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1504f, 215f), vec2<f32>(-1141f, global1[_wgslsmith_index_u32(40192u, 29u)]))))))), vec2<bool>(true, any(!(!vec3<bool>(false, false, global2.x)))), global2.x);
    let var_1 = ~select(vec2<u32>(u_input.c.x, ~_wgslsmith_mult_u32(u_input.c.x, 4294967295u)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, abs(u_input.b)), select(vec2<u32>(14299u, 68363u), select(vec2<u32>(92830u, u_input.c.x), vec2<u32>(u_input.c.x, 21286u), false), select(vec2<bool>(false, global2.x), var_0.b, var_0.b))), !vec2<bool>(true, func_2(Struct_1(var_0.a, vec2<bool>(global2.x, var_0.c), false), var_0.a.x, vec2<i32>(-2147483647i, 35981i), Struct_2(vec4<bool>(true, true, var_0.b.x, global2.x)))));
    var_0 = func_1();
    let var_2 = false;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(799f, 260f))), global2.xx, 0u > reverseBits(97101u >> (_wgslsmith_div_u32(u_input.c.x, var_1.x) % 32u)));
    global3 = array<vec2<u32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a >> (60700u % 32u), u_input.a, u_input.a), vec4<i32>(_wgslsmith_add_i32(-24440i, u_input.a), 2147483647i, 0i, _wgslsmith_add_i32(u_input.a, u_input.a))), ~vec4<u32>(abs(var_1.x) | ~var_1.x, var_1.x, 8714u, 0u), firstLeadingBit(-u_input.a), 44194u, vec2<f32>(-925f, global1[_wgslsmith_index_u32(firstLeadingBit(abs(firstLeadingBit(var_1.x))), 29u)]));
}

