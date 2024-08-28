struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-756f, 537f, -561f), 48297u, 1u);

var<private> global1: array<Struct_2, 14>;

var<private> global2: vec2<i32> = vec2<i32>(1i, 11620i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec3<i32>) -> vec3<i32> {
    global1 = array<Struct_2, 14>();
    let var_0 = global2.x;
    global0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(global0.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1024f, global0.a.x, global0.a.x), vec3<f32>(-463f, 862f, global0.a.x), false))))), global0.a), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1.x, global0.c, global0.b, 4294967295u)), _wgslsmith_mod_vec4_u32(arg_1, vec4<u32>(45607u, global0.c, u_input.a.x, arg_1.x))) ^ arg_0.x, 4899u);
    var var_1 = vec4<i32>(arg_2.x, -(~(firstLeadingBit(25937i) << (min(65775u, arg_1.x) % 32u))), -33524i, -2147483647i);
    var var_2 = !vec4<bool>(true, all(vec3<bool>(true, true, true)), true, !any(vec3<bool>(true, true, false)));
    return arg_2 ^ select(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2.x | var_1.x, var_1.x >> (arg_1.x % 32u), arg_2.x), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, var_1.x, global2.x), arg_2 | arg_2), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(var_1.wxw, vec3<i32>(2348i, -1908i, arg_2.x)), ~arg_2)), vec3<i32>(-1i, ~max(var_1.x, -2147483647i), firstLeadingBit(-62771i)), vec3<bool>(true, !var_2.x, ~0u > global0.c));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<i32>) -> vec4<i32> {
    var var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(abs(abs(~(-12834i))), reverseBits(select(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_2.x), vec2<i32>(25685i, 39635i)), !arg_1.a.x)), _wgslsmith_dot_vec2_i32(arg_2.zz, vec2<i32>(57518i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<i32>(-2147483647i, arg_2.x, global2.x, -12487i))))), _wgslsmith_sub_vec3_i32(vec3<i32>(-firstLeadingBit(-42208i), func_3(u_input.a.ww, u_input.a, _wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.x, 2147483647i, arg_2.x), arg_2)).x, global2.x), vec3<i32>(_wgslsmith_mod_i32(-2147483647i, global2.x) ^ _wgslsmith_mult_i32(arg_2.x, 1i), -min(arg_2.x, 1158i), _wgslsmith_dot_vec4_i32(select(vec4<i32>(60785i, global2.x, -94465i, -1i), vec4<i32>(-2147483647i, global2.x, 7791i, global2.x), arg_0.a.x), ~vec4<i32>(arg_2.x, global2.x, -1i, global2.x)))));
    var_0 = ~_wgslsmith_sub_vec3_i32(((arg_2 << (vec3<u32>(32084u, 92166u, global0.b) % vec3<u32>(32u))) | _wgslsmith_div_vec3_i32(arg_2, vec3<i32>(1i, arg_2.x, global2.x))) >> (vec3<u32>(_wgslsmith_div_u32(u_input.b, 0u), global0.b, ~global0.c) % vec3<u32>(32u)), vec3<i32>(-83407i, -max(var_0.x, arg_2.x), ~1i));
    var var_1 = vec2<i32>(2147483647i, 8181i);
    var var_2 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(global0.a, _wgslsmith_f_op_vec3_f32(select(global0.a, vec3<f32>(global0.a.x, global0.a.x, -599f), arg_0.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global0.a.x, 1061f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-822f, global0.a.x, -1101f), vec3<f32>(global0.a.x, global0.a.x, global0.a.x), vec3<bool>(arg_1.a.x, true, true)))), vec3<bool>(select(true, false, arg_1.a.x), false, u_input.a.x == 0u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.a.x)) + _wgslsmith_f_op_f32(min(259f, 534f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-765f * -599f) - _wgslsmith_f_op_f32(step(835f, global0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.a.x, -1598f, false)) + _wgslsmith_f_op_f32(sign(global0.a.x))))), global0.b, ~4294967295u);
    global1 = array<Struct_2, 14>();
    return select(_wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -1i, min(select(var_1.x, 8926i, true), 2147483647i), 0i | var_0.x, 0i), abs(abs(vec4<i32>(arg_2.x, 8004i, arg_2.x, 0i)) | -vec4<i32>(arg_2.x, 0i, var_1.x, var_1.x))), _wgslsmith_div_vec4_i32(vec4<i32>(~firstTrailingBit(-43814i), abs(reverseBits(-1i)), arg_2.x, 1i), -(~vec4<i32>(var_1.x, -25058i, 0i, global2.x))), !select(!select(vec4<bool>(arg_0.a.x, true, arg_1.a.x, arg_0.a.x), vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), vec4<bool>(arg_0.a.x, arg_1.a.x, true, false)), !select(vec4<bool>(true, arg_0.a.x, arg_0.a.x, false), vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), arg_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -628f) != _wgslsmith_f_op_f32(-var_2.a.x)));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_clamp_vec4_i32(func_4(Struct_2(vec2<bool>(any(vec3<bool>(false, true, true)), true)), global1[_wgslsmith_index_u32(global0.c, 14u)], ~_wgslsmith_mult_vec3_i32(~vec3<i32>(global2.x, global2.x, 0i), func_3(u_input.a.yx, u_input.a, vec3<i32>(global2.x, global2.x, -16453i)))), _wgslsmith_div_vec4_i32((min(vec4<i32>(global2.x, 1i, 884i, global2.x), vec4<i32>(global2.x, global2.x, 2147483647i, 26516i)) & -vec4<i32>(-61308i, -1i, global2.x, 47000i)) | ~vec4<i32>(global2.x, 2147483647i, 1i, 34452i), abs(func_4(Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, true)), -vec3<i32>(0i, global2.x, global2.x)))), _wgslsmith_mod_vec4_i32(min(vec4<i32>(1i, ~0i, ~global2.x, -2147483647i), min(~vec4<i32>(global2.x, 65i, -32817i, 909i), select(vec4<i32>(global2.x, global2.x, -31528i, -9020i), vec4<i32>(global2.x, 11821i, -14574i, -2147483647i), true))), ((vec4<i32>(0i, 1i, -2147483647i, 0i) << (u_input.a % vec4<u32>(32u))) | (vec4<i32>(global2.x, global2.x, 3475i, global2.x) >> (u_input.a % vec4<u32>(32u)))) >> (vec4<u32>(25868u, firstLeadingBit(601u), 0u, 1u) % vec4<u32>(32u))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0.a.x, 861f) * global0.a) - _wgslsmith_f_op_vec3_f32(-global0.a)))), global0.b, 1u), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(~vec2<u32>(4294967295u, u_input.b), u_input.a.zz), _wgslsmith_mult_vec2_u32(vec2<u32>(~4294967295u, u_input.a.x), vec2<u32>(global0.b, 0u) & _wgslsmith_mult_vec2_u32(vec2<u32>(8489u, global0.c), vec2<u32>(1u, global0.c)))), 14u)], _wgslsmith_sub_i32(-(~var_0.x | global2.x), func_3(reverseBits(u_input.a.yz) >> (vec2<u32>(17949u, global0.b) % vec2<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 1u, 6557u, global0.c), vec4<u32>(global0.b, 0u, 107569u, global0.b), u_input.a) & min(u_input.a, u_input.a), vec3<i32>(var_0.x, select(var_0.x, -1i, false), _wgslsmith_dot_vec3_i32(var_0.wxx, var_0.yyw))).x));
    var var_2 = 0u;
    return Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_1.a.a.x - -658f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a.x))), _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(sign(-141f)))), 1u, ~0u), Struct_2(select(vec2<bool>(true, var_1.b.a.x), var_1.b.a, var_1.b.a)), var_1.c);
}

fn func_1() -> vec2<u32> {
    let var_0 = ~_wgslsmith_add_vec2_i32(vec2<i32>(~1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(34251i, global2.x, 2147483647i), vec3<i32>(global2.x, -2147483647i, -2147483647i))), max(vec2<i32>(abs(1466i), global2.x), -vec2<i32>(1i, 1i)));
    var var_1 = global0.a.x;
    var var_2 = func_2();
    global2 = func_3(u_input.a.yx, ~(u_input.a & u_input.a), abs(firstTrailingBit(vec3<i32>(-global2.x, -1i >> (u_input.a.x % 32u), func_3(u_input.a.zw, u_input.a, vec3<i32>(global2.x, 970i, 23897i)).x)))).xz;
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(var_2.a.a * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, var_2.a.a.x, 208f)) - _wgslsmith_f_op_vec3_f32(global0.a * global0.a))), var_2.a.b, global0.b), func_2().b, (var_2.c << (4294967295u % 32u)) | _wgslsmith_mult_i32(abs(select(-29885i, 2147483647i, false)), global2.x));
    return abs(u_input.a.yy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_vec2_u32(min(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.a.yz) >> (func_1() % vec2<u32>(32u)), u_input.a.zz), _wgslsmith_mult_vec2_u32(~(~u_input.a.wy), ~(~vec2<u32>(global0.c, 4294967295u))));
    global2 = vec2<i32>(global2.x, global2.x);
    let var_1 = max(vec2<u32>(~3801u & var_0.x, var_0.x), ~(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a.x, u_input.a.x)), select(vec2<u32>(var_0.x, var_0.x), vec2<u32>(1u, var_0.x), true)) >> (~_wgslsmith_mult_vec2_u32(vec2<u32>(3319u, 35624u), u_input.a.yz) % vec2<u32>(32u))));
    global1 = array<Struct_2, 14>();
    var var_2 = vec2<bool>(!all(vec4<bool>(true, true, true, true)) & (((0u ^ u_input.b) >> (_wgslsmith_dot_vec3_u32(u_input.a.zwy, u_input.a.xxy) % 32u)) >= min(select(global0.b, u_input.a.x, true), _wgslsmith_sub_u32(108456u, 63854u))), 51160u != var_0.x);
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global0.a))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a.x, 463f, false))), global0.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-803f)))))), firstLeadingBit(~1u), _wgslsmith_div_u32(4294967295u, 37701u));
    var_3 = func_2().a;
    let var_4 = ~select(_wgslsmith_div_vec2_u32(var_1, abs(vec2<u32>(var_0.x, var_0.x))), firstTrailingBit(countOneBits(min(vec2<u32>(global0.c, u_input.b), vec2<u32>(4347u, 5413u)))), vec2<bool>(false, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2728f), global0.a.x))), global2.x, abs(16232u), vec3<i32>((i32(-1i) * -31447i) | global2.x, global2.x, global2.x) | ~vec3<i32>(min(global2.x, 1i), ~(-11025i), global2.x << (var_4.x % 32u)));
}

