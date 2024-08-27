struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec3<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_3 = Struct_3(vec2<f32>(589f, 285f), vec3<bool>(false, true, false), vec3<bool>(true, true, true), Struct_2(310f, 56406u, -9309i, vec3<f32>(2332f, -1267f, 1162f)));

var<private> global2: array<bool, 7>;

var<private> global3: array<bool, 1> = array<bool, 1>(true);

var<private> global4: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2) -> i32 {
    global4 = vec2<bool>(!global4.x, true);
    var var_0 = vec4<bool>(all(vec2<bool>(global4.x, _wgslsmith_f_op_f32(max(464f, arg_1.d.x)) == -1637f)), ((~u_input.a >> (0u % 32u)) | ~_wgslsmith_mod_u32(1489u, u_input.a)) >= _wgslsmith_sub_u32(global1.d.b, ~countOneBits(u_input.a)), global4.x, global2[_wgslsmith_index_u32(global1.d.b, 7u)]);
    global4 = var_0.wy;
    global3 = array<bool, 1>();
    var var_1 = u_input.c;
    return ~_wgslsmith_div_i32((44563i | arg_1.c) >> (max(max(global1.d.b, u_input.a), firstTrailingBit(global1.d.b)) % 32u), u_input.b.x);
}

fn func_3() -> i32 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(1000f)), 361f, _wgslsmith_f_op_f32(103f - _wgslsmith_div_f32(-109f, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(ceil(-1000f)))) - vec4<f32>(global0.x, global0.x, global0.x, -590f)));
    let var_0 = abs(u_input.b.x);
    global0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a.x))), -563f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(481f + 875f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-349f * global0.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -629f), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * 802f), _wgslsmith_f_op_f32(max(-708f, 1000f))))));
    var var_1 = ~(~(~vec2<u32>(global1.d.b, _wgslsmith_mod_u32(global1.d.b, global1.d.b))));
    global4 = !select(!global1.b.zz, global1.b.zz, !global1.b.yz);
    return u_input.b.x & _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-select(vec4<i32>(1i, -1i, global1.d.c, u_input.c), vec4<i32>(-1i, u_input.b.x, -37743i, var_0), true), vec4<i32>(_wgslsmith_mult_i32(0i, var_0), -u_input.b.x, -1i, -21656i)), ~vec4<i32>(var_0, 53358i, var_0 << (u_input.a % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.d.c, -2147483647i, var_0, global1.d.c), vec4<i32>(var_0, -1i, var_0, u_input.b.x))));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> Struct_3 {
    let var_0 = global1.d;
    var var_1 = var_0.d.xy;
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.x + -690f), -1217f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.d.yy, vec2<f32>(1597f, var_0.a)))))), select(vec3<bool>(!global4.x || true, !global2[_wgslsmith_index_u32(arg_0.b << (25598u % 32u), 7u)], true), select(arg_3.a.wyz, !arg_3.a.zxz, global3[_wgslsmith_index_u32(abs(~u_input.a), 1u)]), false), select(select(select(!global1.c, vec3<bool>(global1.c.x, true, global3[_wgslsmith_index_u32(arg_2, 1u)]), vec3<bool>(global2[_wgslsmith_index_u32(arg_0.b, 7u)], false, true)), arg_3.a.yzz, arg_3.a.x), !vec3<bool>(true, !arg_3.a.x, select(false, global3[_wgslsmith_index_u32(58027u, 1u)], global3[_wgslsmith_index_u32(global1.d.b, 1u)])), !arg_3.a.yxz), Struct_2(_wgslsmith_div_f32(-922f, -457f), _wgslsmith_mod_u32(9706u, 39316u) << (1u % 32u), func_3(), var_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(global1.d, select(true, _wgslsmith_dot_vec4_u32(select(vec4<u32>(27407u, 0u, global1.d.b, u_input.a), vec4<u32>(global1.d.b, 89250u, u_input.a, 4294967295u), global1.c.x), vec4<u32>(4294967295u, u_input.a, 1u, 3520u) | vec4<u32>(global1.d.b, 1u, global1.d.b, u_input.a)) >= reverseBits(3072u), select(func_1(global1.b, global1.d), _wgslsmith_clamp_i32(-39289i, global1.d.c, -1i), global3[_wgslsmith_index_u32(~4303u, 1u)]) < firstTrailingBit(-global1.d.c)), global1.d.b, Struct_1(!(!select(vec4<bool>(global2[_wgslsmith_index_u32(26751u, 7u)], false, global4.x, global3[_wgslsmith_index_u32(global1.d.b, 1u)]), vec4<bool>(false, true, global4.x, false), false)), _wgslsmith_f_op_f32(-253f + global1.d.a)));
    global4 = var_0.c.zx;
    let var_1 = -13712i;
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.d.a, 224f, var_0.d.a, global0.x), vec4<f32>(global0.x, global1.d.a, 652f, global0.x))) * _wgslsmith_div_vec4_f32(vec4<f32>(-1649f, 600f, var_0.d.d.x, global0.x), vec4<f32>(var_0.d.d.x, var_0.d.d.x, 1297f, global0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2394f, global1.a.x, var_0.a.x, 673f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -647f, global1.a.x) * vec4<f32>(global0.x, global1.d.d.x, var_0.d.a, var_0.a.x)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(global0.x)), -694f, -2068f, _wgslsmith_f_op_f32(max(798f, -844f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, 329f, global0.x, global0.x), vec4<f32>(global0.x, var_0.d.d.x, var_0.a.x, global0.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, -1401f, var_0.a.x, -1800f)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, 364f, var_0.d.a, global0.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-868f, -954f, -225f, -331f) - vec4<f32>(global1.a.x, global1.a.x, -367f, 155f)))))), select(select(vec4<bool>(true, false, !global2[_wgslsmith_index_u32(var_0.d.b, 7u)], !global3[_wgslsmith_index_u32(var_0.d.b, 1u)]), !(!vec4<bool>(global4.x, var_0.b.x, global3[_wgslsmith_index_u32(u_input.a, 1u)], false)), select(select(vec4<bool>(true, var_0.b.x, var_0.c.x, true), vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.d.b, 7u)], true, global3[_wgslsmith_index_u32(u_input.a, 1u)]), global3[_wgslsmith_index_u32(82648u, 1u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(var_0.d.b, 1u)], global3[_wgslsmith_index_u32(var_0.d.b, 1u)], global4.x, var_0.b.x), vec4<bool>(var_0.b.x, false, global1.c.x, global3[_wgslsmith_index_u32(4294967295u, 1u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(var_0.d.b, 7u)], var_0.c.x, true)), false)), !(!vec4<bool>(global3[_wgslsmith_index_u32(global1.d.b, 1u)], var_0.b.x, true, global3[_wgslsmith_index_u32(0u, 1u)])), vec4<bool>(any(func_2(var_0.d, true, 4294967295u, Struct_1(vec4<bool>(var_0.c.x, global3[_wgslsmith_index_u32(u_input.a, 1u)], global2[_wgslsmith_index_u32(global1.d.b, 7u)], global1.b.x), -1983f)).c), true, ~13819u >= (var_0.d.b >> (79440u % 32u)), all(func_2(Struct_2(global0.x, 0u, -24498i, vec3<f32>(-381f, global0.x, var_0.a.x)), global4.x, global1.d.b, Struct_1(vec4<bool>(global4.x, true, global3[_wgslsmith_index_u32(u_input.a, 1u)], true), var_0.a.x)).b.zy)))));
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, global1.d.b, var_0.d.b), vec3<u32>(var_0.d.b, u_input.a, 4294967295u)) << (max(~var_0.d.b, abs(4294967295u)) % 32u), firstTrailingBit(~(~24674u))), (reverseBits(vec2<u32>(var_0.d.b, u_input.a) & vec2<u32>(u_input.a, var_0.d.b)) | reverseBits(~vec2<u32>(55293u, global1.d.b))) << (vec2<u32>(firstLeadingBit(global1.d.b), reverseBits(abs(var_0.d.b))) % vec2<u32>(32u)));
    var var_3 = countOneBits(vec4<u32>(u_input.a, ~max(16873u, _wgslsmith_mult_u32(var_2, global1.d.b)), 44315u, var_2));
    let var_4 = var_3.xwx;
    global3 = array<bool, 1>();
    var var_5 = reverseBits(max(_wgslsmith_clamp_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(30630i, -2147483647i), vec2<i32>(3114i, 16613i)), _wgslsmith_mult_vec2_i32(abs(u_input.b.xy), u_input.b.yx & u_input.b.xz), u_input.b.yy), _wgslsmith_add_vec2_i32(vec2<i32>(-13209i, 24339i), max(vec2<i32>(-32128i, 2147483647i) ^ vec2<i32>(global1.d.c, u_input.b.x), reverseBits(u_input.b.xz)))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, ~vec3<i32>(global1.d.c, -6637i, 1i));
}

