struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_1 = Struct_1(-1048f, false, vec2<i32>(-1i, 36086i), 988f);

var<private> global2: array<bool, 29>;

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: f32) -> i32 {
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -478f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(157f, 674f))))), !(!(!(!global1.b))), vec2<i32>(15756i << (u_input.b % 32u), ~u_input.a.x), -817f);
    global2 = array<bool, 29>();
    global0 = arg_1;
    let var_0 = -(~(-47034i));
    global0 = vec2<i32>(select(global0.x, -2147483647i, any(select(vec3<bool>(global1.b, global1.b, global1.b), vec3<bool>(global1.b, true, true), !vec3<bool>(global2[_wgslsmith_index_u32(25982u, 29u)], true, true)))), -global0.x);
    return u_input.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_add_vec2_i32(-arg_1.c, vec2<i32>(-1i) * -vec2<i32>(-12537i, 1i));
    global1 = arg_1;
    let var_1 = arg_1.b;
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)));
    return firstTrailingBit(~65271u) & 65779u;
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = 1i;
    var var_1 = 33087u;
    var var_2 = firstTrailingBit(43599u);
    var_1 = _wgslsmith_mult_u32(61731u, u_input.b) & func_4(Struct_1(-657f, global1.c.x >= func_3(global1.c, global1.c, 445f), countOneBits(global1.c), _wgslsmith_f_op_f32(f32(-1f) * -137f)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.d, 1667f) - -2826f), true, min(-vec2<i32>(global0.x, global1.c.x), vec2<i32>(-15154i, 1i)), global1.a));
    global3 = _wgslsmith_dot_vec3_u32(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(7190u, 0u, u_input.b), vec3<u32>(9637u, 66838u, 4206u))) | ((vec3<u32>(0u, 43066u, 31924u) >> (max(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(0u, u_input.b, 0u)) % vec3<u32>(32u))) >> (_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(1u, u_input.b, 0u)), abs(vec3<u32>(u_input.b, 4294967295u, 4294967295u)), vec3<u32>(47972u, u_input.b, 4294967295u) << (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u))), reverseBits(abs(~vec3<u32>(30946u, u_input.b, 0u))) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, u_input.b)), vec2<u32>(1u, u_input.b) >> (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u))), _wgslsmith_div_u32(u_input.b, 4294967295u >> (u_input.b % 32u)), abs(max(u_input.b, u_input.b))) % vec3<u32>(32u)));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))))));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = ~vec2<u32>(countOneBits(abs(~u_input.b)), 4294967295u & firstTrailingBit(abs(u_input.b)));
    var var_1 = arg_3;
    var var_2 = min(-(~vec4<i32>(12317i, -2147483647i, select(1i, var_1.c.x, arg_1), _wgslsmith_dot_vec2_i32(var_1.c, vec2<i32>(arg_2.c.x, 3487i)))), select(-max(-vec4<i32>(var_1.c.x, global1.c.x, var_1.c.x, var_1.c.x), vec4<i32>(global0.x, global1.c.x, global1.c.x, -2147483647i)), _wgslsmith_add_vec4_i32(u_input.a, firstLeadingBit(vec4<i32>(-50020i, -2096i, global0.x, -2147483647i))), all(vec4<bool>(true, false, all(vec3<bool>(arg_3.b, false, false)), global1.b && false))));
    let var_3 = var_0.x;
    var_1 = arg_3;
    return vec2<i32>(-2147483647i, -2147483647i);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_1(global1.a, any(select(select(vec3<bool>(global1.b, global1.b, global1.b), !vec3<bool>(false, global2[_wgslsmith_index_u32(22309u, 29u)], true), select(vec3<bool>(true, global1.b, global2[_wgslsmith_index_u32(1u, 29u)]), vec3<bool>(global1.b, global1.b, global2[_wgslsmith_index_u32(4294967295u, 29u)]), vec3<bool>(true, true, false))), !vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(17794u, 29u)]), !select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.b, 29u)]), vec3<bool>(true, false, true), false))), ~(~(-_wgslsmith_div_vec2_i32(u_input.a.xz, vec2<i32>(global1.c.x, global1.c.x)))), 964f);
    var var_1 = _wgslsmith_sub_vec2_i32(~min(func_5(_wgslsmith_f_op_f32(func_2(false)), true, var_0, var_0), countOneBits(vec2<i32>(arg_0, -2352i)) | vec2<i32>(var_0.c.x, -2147483647i)), global1.c);
    var var_2 = _wgslsmith_f_op_f32(980f + var_0.d);
    var_1 = global1.c;
    var var_3 = global1.d;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-517f - global1.d)) * global1.d), global2[_wgslsmith_index_u32(u_input.b, 29u)], vec2<i32>(~(-_wgslsmith_clamp_i32(-12085i, global1.c.x, -87424i)), -2147483647i), 1120f);
    global1 = func_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-(u_input.a.yxy ^ u_input.a.xxy), -vec3<i32>(67719i, var_0.c.x, -48703i)), max(~vec3<i32>(var_0.c.x, global0.x, u_input.a.x), select(u_input.a.ywx, vec3<i32>(u_input.a.x, 7881i, 1i), vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.b, 29u)]))) >> (select(~vec3<u32>(u_input.b, u_input.b, 2978u), ~vec3<u32>(u_input.b, 35501u, 4294967295u), global1.a < -297f) % vec3<u32>(32u))));
    let var_1 = func_1(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.a.yzz, reverseBits(~vec3<i32>(global0.x, 2147483647i, 29387i))), 1i));
    global2 = array<bool, 29>();
    let var_2 = ~reverseBits(vec4<u32>(~(~u_input.b), ~_wgslsmith_div_u32(0u, u_input.b), ~countOneBits(34471u), 0u & u_input.b));
    global0 = vec2<i32>(func_1(max(func_1(min(-17393i, -2147483647i)).c.x, -_wgslsmith_sub_i32(var_0.c.x, 105922i))).c.x, global0.x);
    let var_3 = -261f;
    let var_4 = global1.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_2, _wgslsmith_add_vec2_u32(max(~vec2<u32>(51189u, var_2.x), max(vec2<u32>(4294967295u, u_input.b), var_2.xy)), ~firstTrailingBit(_wgslsmith_div_vec2_u32(var_2.zx, vec2<u32>(48379u, 1u)))), var_2.x, _wgslsmith_f_op_f32(floor(global1.a)), vec4<i32>(var_4.x, 45077i, _wgslsmith_dot_vec2_i32(vec2<i32>(-22141i, var_4.x) << (vec2<u32>(20889u, 46739u) % vec2<u32>(32u)), u_input.a.wy), firstLeadingBit(i32(-1i) * -1i)));
}

