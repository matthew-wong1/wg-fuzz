struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 0u, 68950u);

var<private> global1: array<vec3<f32>, 9>;

var<private> global2: Struct_1;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32) -> i32 {
    var var_0 = Struct_1(global2.a, 58916u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -546f), arg_1))), -39524i);
    var var_1 = Struct_1(var_0.a, 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_1, -366f)), _wgslsmith_f_op_f32(select(-1000f, global2.c, select(global2.a.x, true, var_0.a.x)))))), -u_input.a);
    var var_2 = var_1.a.x;
    let var_3 = Struct_1(vec4<bool>(abs(global0.x) >= (~var_0.b << (4294967295u % 32u)), all(select(var_0.a.xwy, vec3<bool>(true, arg_0.x, false), vec3<bool>(true, var_1.a.x, false))) & any(vec4<bool>(var_0.a.x, arg_0.x, true, false)), all(select(vec4<bool>(false, var_1.a.x, false, global2.a.x), vec4<bool>(global2.a.x, arg_0.x, false, var_1.a.x), !vec4<bool>(false, true, var_1.a.x, arg_0.x))), !(~var_1.b < 0u)), 0u, _wgslsmith_f_op_f32(min(var_1.c, _wgslsmith_f_op_f32(-1f))), var_0.d);
    let var_4 = vec2<u32>(~0u, ~var_1.b & (_wgslsmith_dot_vec2_u32(global0.zz, global0.xx) & _wgslsmith_mod_u32(4294967295u, 22769u))) | (_wgslsmith_mult_vec2_u32(~min(global0.xy, vec2<u32>(1u, 99798u)), _wgslsmith_add_vec2_u32(global0.yy, global0.zz)) ^ (global0.zx ^ vec2<u32>(global2.b, firstLeadingBit(40572u))));
    return u_input.a;
}

fn func_2() -> bool {
    var var_0 = Struct_1(!global2.a, global0.x, _wgslsmith_f_op_f32(global2.c + -344f), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(abs(u_input.a), func_3(global2.a.zy, global2.c)), 2147483647i ^ u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(0i, 1i))), 17952i));
    let var_1 = Struct_1(select(vec4<bool>(false, false, false, true), var_0.a, select(global2.a, vec4<bool>(global2.a.x, true, all(global2.a.xxx), true), vec4<bool>(any(vec4<bool>(true, false, true, false)), global2.a.x, global2.b < var_0.b, !global2.a.x))), global2.b, 988f, countOneBits(i32(-1i) * -2147483647i));
    global0 = vec3<u32>(1u ^ global2.b, ~1u, ~0u) & vec3<u32>(var_1.b, abs(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(17444u, global2.b, 1u), vec3<u32>(1u, global0.x, 1u)))), ~var_0.b);
    var var_2 = Struct_1(vec4<bool>(!select(global2.b != 1u, var_1.a.x, select(false, false, true)), true, ((1i < u_input.a) != any(var_0.a.wwx)) && true, var_1.a.x), select(_wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.b, 4294967295u) | global0.yy, vec2<u32>(48928u, 46431u) | vec2<u32>(global2.b, 4294967295u)), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(12883u, 1u), vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, var_0.b)), global0.xz)), 9280u, true), var_0.c, func_3(vec2<bool>(var_0.a.x, any(select(global2.a.zxx, var_0.a.zxz, global2.a.zxz))), var_0.c));
    var var_3 = Struct_1(vec4<bool>(all(var_1.a.zyy), var_0.a.x, var_0.a.x, !var_0.a.x), 20537u, global2.c, _wgslsmith_mult_i32(abs(min(u_input.a, var_0.d)), _wgslsmith_sub_i32(7645i, -2714i)));
    return var_3.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = vec3<f32>(1488f, -333f, _wgslsmith_f_op_f32(-global2.c));
    var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.c, global2.c, _wgslsmith_f_op_f32(abs(-493f)))));
    let var_1 = ~arg_0.b == 1u;
    let var_2 = ~4294967295u;
    var_0 = _wgslsmith_f_op_vec3_f32(min(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(global0.yx) & (~global0.yy >> (global0.yy % vec2<u32>(32u))), global0.xx), 9u)], global1[_wgslsmith_index_u32(23579u & abs(global2.b), 9u)]));
    return Struct_1(vec4<bool>(arg_0.a.x, global2.a.x, arg_0.a.x, global2.c <= _wgslsmith_f_op_f32(-global2.c)), abs(var_2), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -335f)), _wgslsmith_f_op_f32(f32(-1f) * -1034f)), 1i);
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    global1 = array<vec3<f32>, 9>();
    var var_0 = -11897i;
    var var_1 = func_4(Struct_1(!vec4<bool>(func_2(), global2.a.x, global2.a.x, global2.a.x), ~global2.b, 1654f, -2147483647i), arg_0.wz);
    global2 = Struct_1(vec4<bool>(all(!func_4(Struct_1(var_1.a, global0.x, global2.c, arg_0.x), arg_0.zz).a), !((var_1.a.x && true) && true), true, ~1u <= firstTrailingBit(~11625u)), u_input.b, 662f, ~arg_0.x >> (u_input.b % 32u));
    global0 = ~(vec3<u32>(37847u, var_1.b, ~global2.b ^ global2.b) << (~(~max(vec3<u32>(4628u, var_1.b, 77348u), vec3<u32>(global0.x, 7237u, u_input.b))) % vec3<u32>(32u)));
    return Struct_1(var_1.a, 4294967295u, func_4(func_4(Struct_1(select(global2.a, vec4<bool>(true, true, var_1.a.x, false), var_1.a.x), 70708u, var_1.c, -1i), arg_0.wx), -_wgslsmith_clamp_vec2_i32(firstTrailingBit(arg_0.wy), _wgslsmith_mod_vec2_i32(arg_0.wz, vec2<i32>(arg_0.x, u_input.a)), vec2<i32>(-2147483647i, 24753i))).c, -arg_0.x);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-376f, -1949f, 575f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2 - -1494f), _wgslsmith_f_op_f32(f32(-1f) * -1130f)))), vec4<f32>(_wgslsmith_f_op_f32(max(-1000f, arg_0.c)), arg_0.c, _wgslsmith_f_op_f32(-345f - _wgslsmith_f_op_f32(select(arg_2, global2.c, global2.a.x))), global2.c)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -357f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_0.c, global2.c)), _wgslsmith_f_op_f32(trunc(-1813f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.c + -1000f))), arg_2)));
    global1 = array<vec3<f32>, 9>();
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(~(~global0.x), 9u)], global1[_wgslsmith_index_u32(global0.x, 9u)])))));
    global2 = func_4(arg_0, vec2<i32>(select(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.d, -1i) >> (global0.zx % vec2<u32>(32u)), ~vec2<i32>(0i, 14477i)), 0i, true), u_input.a));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-1043f - arg_0.c), var_1.x, _wgslsmith_f_op_f32(-var_1.x), 1132f))))));
    return StorageBuffer(arg_1.x, 1i, ~vec2<u32>(arg_0.b, u_input.b), func_4(Struct_1(!(!vec4<bool>(false, false, arg_0.a.x, arg_0.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 6164u, global0.x, 4294967295u), vec4<u32>(0u, global2.b, global2.b, 1u)), _wgslsmith_f_op_f32(f32(-1f) * -1520f), arg_1.x), firstLeadingBit(_wgslsmith_div_vec2_i32(arg_1, vec2<i32>(-18729i, -2147483647i)))).d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_clamp_vec3_u32(select(~(~(~vec3<u32>(56592u, global0.x, global2.b))), vec3<u32>(global2.b, 1u, ~(~global2.b)), any(!global2.a.yxw)), firstLeadingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(6930u, 33432u, global0.x) ^ vec3<u32>(0u, global0.x, 36837u), select(vec3<u32>(1u, 32859u, 12410u), vec3<u32>(53682u, 1u, 4294967295u), global2.a.x) | vec3<u32>(605u, 57680u, global2.b))), vec3<u32>(~_wgslsmith_div_u32(~global2.b, 0u), 0u, ~19119u));
    var var_0 = u_input.a;
    var var_1 = firstTrailingBit(vec4<i32>(1i, -1i, ~((i32(-1i) * -48694i) | (global2.d >> (1u % 32u))), -28256i));
    var var_2 = countOneBits(max(~vec2<u32>(global2.b, 1u) & vec2<u32>(global2.b, global0.x), vec2<u32>(0u, ~18955u)) | ~vec2<u32>(1u, 80306u));
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(global2.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c + global2.c) * -325f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.c), global2.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c, global2.c))));
    global0 = vec3<u32>(global0.x, global0.x, ~firstTrailingBit(~_wgslsmith_add_u32(var_2.x, 5630u)));
    let x = u_input.a;
    s_output = func_5(func_1(~(-vec4<i32>(u_input.a, global2.d, 62624i, u_input.a))), ~(firstLeadingBit(max(vec2<i32>(u_input.a, u_input.a), var_1.xw)) >> (vec2<u32>(17043u, 11330u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(round(-1629f)));
}

