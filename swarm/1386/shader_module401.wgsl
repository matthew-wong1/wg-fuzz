struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: i32,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1u, Struct_1(vec2<u32>(45789u, 0u), 669f, 2307f, 1i), vec2<i32>(53079i, i32(-2147483648)), Struct_1(vec2<u32>(40907u, 41433u), -1488f, 215f, -11729i));

var<private> global1: array<Struct_2, 23>;

var<private> global2: array<vec2<f32>, 7>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global1 = array<Struct_2, 23>();
    var var_0 = Struct_3(Struct_1(vec2<u32>(global0.a >> (_wgslsmith_mult_u32(arg_0.a.x, global0.a) % 32u), ~firstTrailingBit(global0.d.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.d.b, 294f, all(vec3<bool>(false, true, true))))), -245f, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.d, _wgslsmith_sub_i32(-2147483647i, u_input.a.x), u_input.b.x), _wgslsmith_div_vec3_i32(vec3<i32>(global0.b.d, global0.d.d, 42156i), u_input.a.xww << (vec3<u32>(3219u, arg_0.a.x, arg_0.a.x) % vec3<u32>(32u))))));
    var_0 = Struct_3(Struct_1(~(~select(global0.b.a, vec2<u32>(59432u, 1u), false)), _wgslsmith_div_f32(-831f, -218f), _wgslsmith_f_op_f32(-arg_0.b), -_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.d, global0.d.d, u_input.a.x), vec3<i32>(u_input.b.x, 25776i, -2147483647i))));
    global0 = Struct_2(countOneBits(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(38337u, 1u, 0u)), vec3<u32>(firstTrailingBit(4294967295u), global0.b.a.x, _wgslsmith_add_u32(var_0.a.a.x, global0.b.a.x)))), Struct_1(_wgslsmith_sub_vec2_u32(~vec2<u32>(70766u, var_0.a.a.x), var_0.a.a >> (vec2<u32>(global0.b.a.x, 32560u) % vec2<u32>(32u))) << (vec2<u32>(arg_0.a.x, countOneBits(5699u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b)))), var_0.a.b, -2147483647i), min(u_input.b.zy & (global0.c | u_input.a.zx), vec2<i32>(min(_wgslsmith_clamp_i32(arg_0.d, u_input.a.x, -1i), countOneBits(var_0.a.d)), min(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(1i, -17326i)))), Struct_1(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a.a.x, var_0.a.a.x), vec2<u32>(0u, 1u), vec2<u32>(global0.b.a.x, 81434u)), vec2<u32>(arg_0.a.x, global0.b.a.x)), min(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.b.a.x, 50113u), vec2<u32>(1u, var_0.a.a.x)), vec2<u32>(arg_0.a.x, 54285u) | arg_0.a), var_0.a.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-347f)))), _wgslsmith_f_op_f32(-711f + _wgslsmith_f_op_f32(f32(-1f) * -685f)), _wgslsmith_mod_i32(1i, i32(-1i) * -7992i)));
    let var_1 = Struct_1(~reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(1u, arg_0.a.x), countOneBits(var_0.a.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.c), -1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.b.c + arg_0.b)))), -372f)), -43359i >> (abs(abs(arg_0.a.x ^ 4294967295u)) % 32u));
    return firstTrailingBit(firstTrailingBit(52341u));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: Struct_4) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -226f), 664f, _wgslsmith_f_op_f32(-499f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, -105f) - 1425f)))));
    global0 = Struct_2(firstTrailingBit(global0.a), arg_0, vec2<i32>(arg_0.d, abs(1i)), Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(arg_3.a.a.a.x | global0.d.a.x, 31247u), global0.b.a), -124f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(718f))))), -2147483647i));
    var var_1 = _wgslsmith_dot_vec2_u32(global0.b.a | _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u), arg_0.a), _wgslsmith_clamp_vec2_u32(global0.d.a, ~(~global0.d.a), vec2<u32>(arg_0.a.x << (func_3(Struct_1(vec2<u32>(arg_3.b, arg_3.b), var_0.x, global0.b.b, arg_0.d)) % 32u), select(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, global0.d.a.x, global0.b.a.x), vec3<u32>(arg_3.b, arg_3.e.x, 1u)), 29950u, 138f != arg_1.x))));
    global2 = array<vec2<f32>, 7>();
    var var_2 = i32(-1i) * -_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.a >> (vec4<u32>(4294967295u, 66468u, 35257u, 1325u) % vec4<u32>(32u)), u_input.a & vec4<i32>(0i, u_input.b.x, -2147483647i, -1i)), arg_0.d);
    return 2147483647i;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_2(1u, Struct_1(arg_2.a.a, -1177f, 120f, 4411i), -global0.c, Struct_1(global0.b.a, 861f, 1f, -1i));
    var var_1 = _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(i32(-1i) * -4322i, global0.c.x | -21550i, _wgslsmith_dot_vec4_i32(vec4<i32>(9326i, u_input.b.x, 16761i, -50711i), u_input.a), -arg_0.x | 0i)), countOneBits(vec4<i32>(-1i) * -u_input.a));
    var var_2 = arg_2.a.d;
    var var_3 = -2147483647i;
    let var_4 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.b), _wgslsmith_f_op_f32(116f - -132f), -274f))))));
    return Struct_2(~arg_2.a.a.x, global0.d, vec2<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(var_0.d.d, arg_1.c.x), reverseBits(u_input.a.x)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, u_input.a.x, 46847i), var_1.zyy)), var_0.d);
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> Struct_4 {
    var var_0 = vec4<bool>(false, false, false, all(vec2<bool>(true, true && (u_input.a.x < 5684i))));
    global0 = func_4(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(firstLeadingBit(u_input.a.x), 0i), max(_wgslsmith_mod_i32(-1i, u_input.a.x), _wgslsmith_add_i32(19824i, arg_1.x))), vec2<i32>(func_2(global0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-452f, -310f, 208f, 264f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.d.c, arg_0, arg_0, arg_0))), Struct_4(Struct_3(Struct_1(global0.d.a, global0.d.b, arg_0, u_input.b.x)), global0.d.a.x, u_input.a.x, false, vec2<u32>(4294967295u, 79046u))), countOneBits(firstTrailingBit(567i)))), Struct_2(select(global0.b.a.x, global0.d.a.x, !(var_0.x == false)), Struct_1(~max(global0.b.a, vec2<u32>(27271u, global0.d.a.x)), 573f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0, -882f), arg_0)), 1i), ~vec2<i32>(reverseBits(-2147483647i), _wgslsmith_div_i32(-1i, -23881i)), Struct_1(~global0.b.a << (max(global0.d.a, vec2<u32>(21480u, 46580u)) % vec2<u32>(32u)), 443f, 1f, global0.d.d)), Struct_3(global0.b), vec3<i32>((_wgslsmith_sub_i32(42626i, global0.d.d) ^ -2147483647i) ^ arg_1.x, reverseBits(0i), arg_1.x));
    global1 = array<Struct_2, 23>();
    global0 = global1[_wgslsmith_index_u32(global0.d.a.x, 23u)];
    let var_1 = all(select(select(vec3<bool>(false, true, var_0.x), vec3<bool>(true, var_0.x, true), var_0.x), vec3<bool>(true, false, true), select(false, any(vec3<bool>(true, var_0.x, var_0.x)), all(vec2<bool>(var_0.x, var_0.x))))) == (true != (var_0.x != var_0.x));
    return Struct_4(Struct_3(Struct_1(~global0.d.a, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.c) - _wgslsmith_f_op_f32(-global0.b.b)), _wgslsmith_div_i32(abs(-41564i), _wgslsmith_add_i32(1i, -16661i)))), _wgslsmith_sub_u32(global0.b.a.x, ~global0.d.a.x), abs(~abs(-19414i)), all(select(select(vec4<bool>(true, false, var_0.x, true), select(vec4<bool>(true, var_0.x, var_1, var_1), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(false, var_1, false, var_1)), true), select(vec4<bool>(var_0.x, false, false, var_1), vec4<bool>(var_0.x, false, var_0.x, var_1), select(false, true, false)), !select(var_0.x, var_0.x, var_1))), vec2<u32>(~((global0.b.a.x & global0.b.a.x) | ~global0.d.a.x), func_4(arg_1.yx, global1[_wgslsmith_index_u32(~global0.b.a.x, 23u)], Struct_3(global0.d), arg_1).b.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global0.d.c))))), u_input.b << (~(~(~vec3<u32>(39284u, global0.a, 41295u))) % vec3<u32>(32u)));
    var_0 = Struct_4(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))), u_input.b).a, ~(~(~1u)), _wgslsmith_clamp_i32(~_wgslsmith_dot_vec4_i32(u_input.a, u_input.a >> (vec4<u32>(36377u, global0.a, var_0.e.x, var_0.a.a.a.x) % vec4<u32>(32u))), ~(~(u_input.b.x & global0.b.d)), u_input.a.x), true, global0.d.a);
    let var_1 = Struct_3(Struct_1(_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 17526u), countOneBits(reverseBits(var_0.a.a.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_0.a.a.b)), _wgslsmith_f_op_f32(1000f * var_0.a.a.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-259f + -474f), global0.d.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a.a.c)) + 1922f)), 0i));
    let var_2 = global1[_wgslsmith_index_u32(var_0.b, 23u)];
    var var_3 = func_4(max(_wgslsmith_sub_vec2_i32(vec2<i32>(-29285i, -var_0.a.a.d), abs(reverseBits(vec2<i32>(1i, global0.c.x)))), vec2<i32>(-1i, 71081i)), func_4(-vec2<i32>(~var_0.c, -27031i), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_1.a.a.x, 50963u), _wgslsmith_div_u32(global0.d.a.x, var_0.b)), 36962u ^ func_4(u_input.a.wz, Struct_2(0u, var_2.b, u_input.b.zy, Struct_1(vec2<u32>(4294967295u, 64107u), -1000f, var_2.b.c, u_input.a.x)), var_1, u_input.b).a), 23u)], var_1, _wgslsmith_div_vec3_i32(max(u_input.a.xzw, u_input.a.zzz), _wgslsmith_sub_vec3_i32(u_input.a.yxx | vec3<i32>(42609i, global0.c.x, 87511i), -u_input.b))), var_1, u_input.a.ywx);
    var var_4 = func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.d.c))), vec3<i32>(_wgslsmith_sub_i32(~var_2.b.d, -70877i), -2147483647i, var_1.a.d) << (~_wgslsmith_mod_vec3_u32(vec3<u32>(global0.d.a.x, var_3.b.a.x, var_2.d.a.x), vec3<u32>(4294967295u, 4294967295u, var_2.b.a.x)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_4.a.a.b))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-161f - -1748f))), -1973f), func_2(Struct_1(~(~vec2<u32>(4294967295u, var_3.a)), global0.d.b, var_4.a.a.b, 2147483647i << (select(0u, var_2.a, true) % 32u)), vec4<f32>(_wgslsmith_f_op_f32(271f + _wgslsmith_f_op_f32(var_0.a.a.b - var_0.a.a.c)), global0.b.b, var_3.d.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1713f) - var_0.a.a.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1316f, var_4.a.a.b, var_1.a.c, var_2.d.c)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.c, -1128f, global0.d.c, var_4.a.a.c))), func_1(_wgslsmith_f_op_f32(-global0.b.c), vec3<i32>(var_4.a.a.d, _wgslsmith_mult_i32(32980i, var_0.c), global0.d.d))), _wgslsmith_mult_i32(~var_4.c, var_4.c), global0.a);
}

