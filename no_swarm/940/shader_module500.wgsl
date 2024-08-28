struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

var<private> global1: array<vec4<bool>, 9>;

var<private> global2: array<u32, 5>;

var<private> global3: Struct_1 = Struct_1(174f, 26843u, vec2<u32>(7329u, 0u), -25755i);

var<private> global4: array<Struct_1, 9>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    var var_0 = global4[_wgslsmith_index_u32(~global3.c.x, 9u)];
    let var_1 = global2[_wgslsmith_index_u32(global3.b, 5u)];
    var var_2 = 0u;
    var_0 = Struct_1(arg_0.x, 0u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 5646u) & (global3.c << (global3.c % vec2<u32>(32u))), ~vec2<u32>(global2[_wgslsmith_index_u32(51808u, 5u)], 28734u) << (vec2<u32>(global2[_wgslsmith_index_u32(global3.b, 5u)], global3.c.x) % vec2<u32>(32u))) % 32u), global3.c, var_0.d);
    var var_3 = Struct_1(1903f, ~global3.b, var_0.c, -1i);
    return arg_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = global4[_wgslsmith_index_u32(min(17806u, global3.c.x), 9u)];
    global3 = Struct_1(_wgslsmith_f_op_f32(func_3(arg_1)), max(~0u, ~_wgslsmith_sub_u32(var_0.b, 4563u)) >> (global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.c.x << (4294967295u % 32u), 1u), 5u)] % 32u), vec2<u32>(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.b, 30308u), 5u)], global2[_wgslsmith_index_u32(1752u, 5u)], arg_0.b << (1u % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(49187u, 5u)], global3.c.x, arg_0.b, global2[_wgslsmith_index_u32(0u, 5u)]) >> (vec4<u32>(16794u, var_0.b, var_0.b, var_0.c.x) % vec4<u32>(32u)), abs(vec4<u32>(global3.c.x, global3.b, global2[_wgslsmith_index_u32(arg_0.c.x, 5u)], 4294967295u)))) | var_0.c, _wgslsmith_add_i32(~u_input.b.x, i32(-1i) * -27182i));
    let var_1 = abs(_wgslsmith_mod_vec2_u32(arg_0.c, abs(global3.c)) ^ arg_0.c);
    let var_2 = ~var_0.b;
    global3 = Struct_1(_wgslsmith_f_op_f32(exp2(var_0.a)), min(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(9020u, var_1.x), 1u), select(3443u, _wgslsmith_add_u32(57214u, 1u), true)), global3.c.x), _wgslsmith_mod_vec2_u32(~reverseBits(~global3.c), ~(~var_0.c)), abs(var_0.d));
    return global4[_wgslsmith_index_u32(~global3.c.x, 9u)];
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> Struct_1 {
    global3 = global4[_wgslsmith_index_u32(36642u, 9u)];
    let var_0 = func_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0.a, global3.a))), countOneBits(firstTrailingBit(_wgslsmith_mod_u32(1u, global2[_wgslsmith_index_u32(58707u, 5u)]))), ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 0u, 1u), vec4<u32>(global3.b, 21943u, 0u, arg_0.b)), _wgslsmith_sub_u32(global3.b, global2[_wgslsmith_index_u32(arg_0.c.x, 5u)])), _wgslsmith_dot_vec4_i32(countOneBits(-vec4<i32>(3895i, 33165i, 1i, global3.d)), ~_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.d, -61577i, -10395i, u_input.b.x), vec4<i32>(global0[_wgslsmith_index_u32(1u, 15u)], u_input.b.x, -1i, global0[_wgslsmith_index_u32(arg_0.c.x, 15u)])))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a, global3.a)))))));
    global1 = array<vec4<bool>, 9>();
    global1 = array<vec4<bool>, 9>();
    var var_1 = !(!(!select(vec3<bool>(false, true, arg_1), vec3<bool>(true, true, true), select(vec3<bool>(true, false, arg_1), vec3<bool>(true, arg_1, true), vec3<bool>(true, arg_1, arg_1)))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(845f * global3.a) * -1091f), ~(~var_0.b), var_0.c, _wgslsmith_div_i32(firstTrailingBit(-1876i), -_wgslsmith_mult_i32(_wgslsmith_div_i32(53373i, 13297i), -34445i)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(global3.a * 354f);
    global0 = array<i32, 15>();
    let var_1 = true;
    let var_2 = global4[_wgslsmith_index_u32(32387u, 9u)];
    var var_3 = Struct_1(-787f, _wgslsmith_mod_u32(min(arg_0.c.x, max(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(arg_0.c.x, 5u)], 16944u), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.b, 5u)], 5u)])), ~_wgslsmith_div_u32(1u, var_2.c.x)), var_2.c, global3.d);
    return arg_1.x;
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: bool) -> u32 {
    let var_0 = !vec2<bool>(func_5(func_4(func_2(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5145u, 5u)], 9u)], vec2<f32>(global3.a, 699f)), select(false, arg_2, false), ~15971u), global1[_wgslsmith_index_u32(global3.b, 9u)]), false);
    let var_1 = vec4<u32>(firstTrailingBit(firstTrailingBit(42929u)) << (75242u % 32u), ~(~_wgslsmith_add_u32(reverseBits(12041u), _wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(1u, 5u)], 1u), vec2<u32>(4294967295u, 97997u)))), _wgslsmith_mod_u32(min(~4294967295u, min(0u, 10827u) & global2[_wgslsmith_index_u32(min(37005u, global2[_wgslsmith_index_u32(global3.c.x, 5u)]), 5u)]), _wgslsmith_add_u32(1u, 0u)), ~reverseBits(32376u));
    global0 = array<i32, 15>();
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.a * global3.a), arg_1.x);
    var var_3 = arg_1;
    return (_wgslsmith_mod_u32(82387u, ~_wgslsmith_dot_vec4_u32(var_1, var_1)) << ((~global2[_wgslsmith_index_u32(0u ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)] | ~(48771u ^ global3.b)) % 32u)) | _wgslsmith_sub_u32(var_1.x, 57069u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 5>();
    var var_0 = _wgslsmith_f_op_f32(-global3.a);
    let var_1 = vec2<bool>(12205u <= func_1(-1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, -1000f, global3.a))), true), u_input.b.x != 66699i);
    var var_2 = ~vec3<u32>(global3.c.x, 33432u, _wgslsmith_add_u32(firstTrailingBit(global2[_wgslsmith_index_u32(global3.b, 5u)]), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global3.b, 49759u, global2[_wgslsmith_index_u32(0u, 5u)], 0u), vec4<u32>(global2[_wgslsmith_index_u32(14236u, 5u)], global3.c.x, 41178u, global2[_wgslsmith_index_u32(global3.c.x, 5u)]))));
    let var_3 = select(!var_1, select(select(select(var_1, var_1, false), vec2<bool>(any(vec2<bool>(var_1.x, true)), true), var_1), select(var_1, var_1, var_1.x), false), var_1);
    var_0 = _wgslsmith_div_f32(-552f, 194f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, global3.d, 5687i, -22957i));
}

