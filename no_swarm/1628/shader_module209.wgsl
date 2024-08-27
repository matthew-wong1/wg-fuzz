struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 4294967295u);

var<private> global1: Struct_3;

var<private> global2: array<Struct_2, 26>;

var<private> global3: array<vec2<u32>, 29>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(1000f + -1261f);
    global3 = array<vec2<u32>, 29>();
    var var_1 = -2147483647i;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1229f)), global1.a) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_0, global1.a)))), var_0))));
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1106f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global1.a, 653f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1613f - 1144f), var_2.a))))));
    return vec4<bool>(true, true, select(firstTrailingBit(global0.x << (global0.x % 32u)) >= 1u, true, select(any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), any(vec4<bool>(false, false, true, false)), any(vec2<bool>(true, true)))), !any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: vec4<f32>) -> vec2<u32> {
    let var_0 = Struct_3(global1.a);
    global2 = array<Struct_2, 26>();
    global0 = _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, ((u_input.c.x & global0.x) >> (_wgslsmith_mod_u32(global0.x, global0.x) % 32u)) & ~0u), abs(max(abs(vec2<u32>(u_input.c.x, arg_2.x) | vec2<u32>(56203u, u_input.c.x)), ~arg_2)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.yy));
    let var_2 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1250f)) - var_1.x), var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1062f * var_0.a), _wgslsmith_f_op_f32(357f + 1570f)) - var_1.x)), _wgslsmith_f_op_f32(-arg_3.x));
    return vec2<u32>(~arg_2.x & ~(abs(24223u) & (arg_2.x << (4294967295u % 32u))), 1u ^ _wgslsmith_clamp_u32(_wgslsmith_add_u32(~40054u, ~arg_2.x), reverseBits(arg_2.x), (arg_2.x ^ arg_2.x) << (62096u % 32u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_3) -> Struct_5 {
    var var_0 = u_input.b.zyx;
    let var_1 = global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(abs(21225u), arg_0.x)), 26u)];
    global0 = vec2<u32>(~arg_0.x ^ 4294967295u, 39032u) ^ global3[_wgslsmith_index_u32(1u, 29u)];
    let var_2 = abs(func_4(func_3(), vec2<i32>(var_0.x, u_input.a.x), select(arg_0.zx, var_1.c.a.xw, ~u_input.a.x < _wgslsmith_mod_i32(51015i, 1i)), vec4<f32>(-949f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1392f, 2140f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -519f), _wgslsmith_f_op_f32(max(global1.a, 491f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(449f, global1.a, false)) + _wgslsmith_f_op_f32(min(-482f, -1210f))))));
    var_0 = firstLeadingBit(vec3<i32>(var_1.c.c.x, 26623i, var_0.x));
    return Struct_5(true, Struct_3(global1.a), var_1.b.b.x, firstTrailingBit(firstLeadingBit(abs(-56741i))) ^ ~firstLeadingBit(var_0.x));
}

fn func_1() -> Struct_3 {
    let var_0 = func_2(abs(~(~vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x)) | _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(0u, global0.x, 75897u, global0.x)), ~vec4<u32>(global0.x, 41673u, 4294967295u, u_input.c.x), ~vec4<u32>(1u, u_input.c.x, 4294967295u, 8650u))), _wgslsmith_f_op_f32(-205f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(326f)))));
    let var_1 = Struct_4(u_input.c.zz & countOneBits(vec2<u32>(global0.x, 91710u)), max(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, abs(1i)), -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, u_input.a.x), u_input.a)), -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_0.d, var_0.d), countOneBits(2147483647i), u_input.b.x)), min(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(global0.x, 0u, u_input.c.x, 52758u)), vec4<u32>(u_input.c.x, u_input.c.x, 0u, 861u) >> (vec4<u32>(4294967295u, 25081u, global0.x, 51070u) % vec4<u32>(32u)), ~vec4<u32>(8677u, 35266u, u_input.c.x, 27274u)), (firstLeadingBit(vec4<u32>(u_input.c.x, u_input.c.x, 66193u, 22408u)) | vec4<u32>(1u, 4294967295u, global0.x, 1u)) | (vec4<u32>(64415u, global0.x, u_input.c.x, global0.x) & ~vec4<u32>(13361u, 11609u, 0u, global0.x))), vec2<i32>(u_input.b.x, 2147483647i));
    var var_2 = ~func_4(vec4<bool>(var_0.a, any(vec3<bool>(true, var_0.a, true)), false, var_0.a), firstTrailingBit(firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(-3365i, u_input.a.x), u_input.a))), vec2<u32>(4294967295u, 4294967295u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(358f, var_0.c, var_0.b.a, global1.a), vec4<f32>(global1.a, 857f, 894f, -998f), vec4<bool>(true, true, var_0.a, true))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-748f, 1717f, var_0.b.a, 241f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a, global1.a, 1032f, 454f), vec4<f32>(677f, 1381f, global1.a, 1718f), var_0.a)) * vec4<f32>(-172f, 1050f, 1188f, -481f)))).x;
    var var_3 = vec4<i32>(i32(-1i) * -1i, var_0.d, 18914i << (max(~u_input.c.x, _wgslsmith_sub_u32(82883u, 61615u)) % 32u), var_1.d.x);
    global1 = Struct_3(var_0.c);
    return func_2(~(vec4<u32>(reverseBits(var_1.c.x), ~u_input.c.x, 1460u, _wgslsmith_add_u32(u_input.c.x, var_1.c.x)) ^ var_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-257f, -1823f, u_input.a.x == -732i))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b.a)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a, 933f) + _wgslsmith_f_op_f32(global1.a * 907f))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 26>();
    var var_0 = u_input.a.x < -1i;
    var_0 = any(!vec3<bool>(!any(vec2<bool>(true, false)), false, false));
    let var_1 = func_1();
    var var_2 = u_input.b;
    let var_3 = Struct_1(~reverseBits(~vec4<u32>(27746u, global0.x, u_input.c.x, 59225u)), vec4<f32>(var_1.a, _wgslsmith_f_op_f32(floor(global1.a)), 557f, global1.a), vec4<i32>(-(~1i), _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), var_2.x), ~(-var_2.x), _wgslsmith_add_i32(-2147483647i << (global0.x % 32u), max(u_input.b.x, 0i))) >> (_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x) >> (vec4<u32>(55953u, global0.x, global0.x, u_input.c.x) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(9497u, u_input.c.x, global0.x, global0.x))), vec4<u32>(global0.x, u_input.c.x, _wgslsmith_sub_u32(0u, global0.x), global0.x)) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, -462f, 127f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, var_1.a, var_1.a), vec3<f32>(1582f, global1.a, -662f))))))), ~countOneBits(u_input.c.x));
    var var_4 = var_2.x;
    let var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(global0.x, 34771u), _wgslsmith_div_vec2_u32(~(max(var_3.a.zx, global3[_wgslsmith_index_u32(4294967295u, 29u)]) >> (~vec2<u32>(0u, global0.x) % vec2<u32>(32u))), ~abs(global3[_wgslsmith_index_u32(countOneBits(global0.x), 29u)])));
}

