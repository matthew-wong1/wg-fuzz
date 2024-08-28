struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: array<Struct_1, 3>;

var<private> global2: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global3: vec3<u32>;

var<private> global4: array<Struct_2, 25>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> vec2<i32> {
    let var_0 = Struct_1(((max(-25445i, arg_1.a.a) & _wgslsmith_mod_i32(u_input.d, u_input.a)) & 42046i) ^ (27443i >> (~global3.x % 32u)), _wgslsmith_f_op_f32(ceil(-279f)));
    var var_1 = Struct_2(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1169f))) + 1081f));
    global4 = array<Struct_2, 25>();
    var var_2 = select(!(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, 0i), ~vec3<i32>(var_0.a, 2490i, arg_0.a.a)) < -var_1.a.a), true != (firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(16525i, -15611i, var_0.a, 9332i), vec4<i32>(-1i, -11918i, 2147483647i, var_0.a))) <= var_0.a), any(vec4<bool>(true, true, global0[_wgslsmith_index_u32(firstTrailingBit(global3.x), 29u)] | any(vec2<bool>(false, global0[_wgslsmith_index_u32(global3.x, 29u)])), !all(global2.xzz))));
    var var_3 = select(!(!global2.xzw), !vec3<bool>(true, any(vec2<bool>(false, false)), all(global2.xzy)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(countOneBits(~0u), 22154u), ~_wgslsmith_sub_u32(global3.x, global3.x) >> (60373u % 32u)), 29u)]);
    return _wgslsmith_clamp_vec2_i32(vec2<i32>(min(abs(arg_1.a.a) >> (global3.x % 32u), -(i32(-1i) * -5865i)), -1i), vec2<i32>(_wgslsmith_mod_i32(arg_1.a.a, var_1.a.a), -1i), -abs(~_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a, arg_0.a.a), vec2<i32>(-51316i, arg_0.a.a))));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = global2.x;
    var var_1 = -(~_wgslsmith_add_vec2_i32(abs(func_3(global4[_wgslsmith_index_u32(global3.x, 25u)], global4[_wgslsmith_index_u32(81829u, 25u)], 15690i, arg_0.b)), (vec2<i32>(-2147483647i, -9452i) << (vec2<u32>(global3.x, global3.x) % vec2<u32>(32u))) & ~vec2<i32>(27284i, 37822i)));
    let var_2 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, global3.x), 25u)];
    var_1 = vec2<i32>(-_wgslsmith_div_i32(-1i, var_1.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, global3.x, 0u), vec3<u32>(0u, global3.x, 4294967295u)) % 32u)), _wgslsmith_mod_i32(arg_0.a, -42972i) | max(-2147483647i, _wgslsmith_add_i32(var_1.x, -var_1.x)));
    let var_3 = arg_0;
    return global4[_wgslsmith_index_u32(_wgslsmith_add_u32(global3.x, global3.x), 25u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec4<bool>) -> vec2<u32> {
    let var_0 = -29805i;
    global0 = array<bool, 29>();
    var var_1 = func_2(Struct_1((_wgslsmith_mod_i32(var_0, u_input.b) >> (4294967295u % 32u)) >> (firstTrailingBit(_wgslsmith_sub_u32(global3.x, 4294967295u)) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-460f + -695f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_1.b)), arg_0.b)))));
    global3 = _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(363u, 1u, arg_2.x), ~vec3<u32>(arg_2.x, global3.x, arg_2.x), select(vec3<u32>(0u, 1u, global3.x) | vec3<u32>(36225u, 1u, 46118u), vec3<u32>(4294967295u, 15342u, 0u), all(vec4<bool>(true, true, arg_3.x, true)))) >> (min(firstTrailingBit(vec3<u32>(global3.x, 1u, global3.x) & vec3<u32>(41656u, arg_2.x, arg_2.x)), _wgslsmith_div_vec3_u32(vec3<u32>(global3.x, 1u, 11788u), abs(vec3<u32>(global3.x, global3.x, 1u)))) % vec3<u32>(32u)), ~vec3<u32>(0u, 0u, 1u));
    var var_2 = ~reverseBits(vec4<i32>(~arg_1.a.a >> (~global3.x % 32u), 1i, func_2(Struct_1(-14003i, -1067f)).a.a, ~max(u_input.a, 29867i)));
    return _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~(~countOneBits(global3.zz)), _wgslsmith_add_vec2_u32(~vec2<u32>(global3.x, arg_2.x), global3.zz)), global3.yx);
}

fn func_5(arg_0: vec2<u32>, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_mod_i32(u_input.a ^ u_input.d, countOneBits(~(-1i >> (firstLeadingBit(2999u) % 32u))));
    var var_1 = reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(~arg_0.x, global3.x) << (vec2<u32>(select(4294967295u, 4294967295u, true), arg_0.x) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec2_u32(global3.zz, ~global3.yx), _wgslsmith_clamp_u32(0u, 92030u & global3.x, _wgslsmith_mod_u32(6345u, 35635u))), ~(~arg_0)));
    var var_2 = vec3<bool>(true, arg_1, arg_1);
    var var_3 = vec2<i32>(countOneBits(_wgslsmith_mod_i32(-var_0, 10378i) << (arg_0.x % 32u)), ~u_input.b);
    global0 = array<bool, 29>();
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2489f * -355f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -951f)))));
}

fn func_1(arg_0: u32, arg_1: i32) -> vec4<i32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_5(func_4(Struct_1(arg_1, _wgslsmith_f_op_f32(-2650f - -1000f)), func_2(Struct_1(-1i, -1000f)), global3.zz, vec4<bool>(u_input.c == 0i, !global0[_wgslsmith_index_u32(4294967295u, 29u)], true, any(global2.yyw))), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-144f + 327f))));
    var var_1 = _wgslsmith_mult_vec4_u32(select(abs(max(~vec4<u32>(1u, 0u, global3.x, 42474u), vec4<u32>(arg_0, arg_0, arg_0, arg_0))), abs(~(vec4<u32>(4294967295u, 39999u, arg_0, 0u) | vec4<u32>(arg_0, 29904u, arg_0, 19038u))), vec4<bool>(global2.x, ~22790i > func_2(Struct_1(-1i, 1353f)).a.a, arg_1 > 47355i, false)), max(vec4<u32>(4294967295u, global3.x, ~0u, 0u >> (1u % 32u)) | firstLeadingBit(~vec4<u32>(1u, arg_0, arg_0, global3.x)), ~abs(select(vec4<u32>(global3.x, 61008u, 4294967295u, 1u), vec4<u32>(global3.x, 1u, 61081u, global3.x), true))));
    let var_2 = global4[_wgslsmith_index_u32(299u, 25u)];
    let var_3 = arg_0;
    var var_4 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.a.b, _wgslsmith_f_op_f32(-var_0.x), -1457f))), vec3<f32>(1436f, var_2.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-495f))))))));
    return -vec4<i32>(var_2.a.a, var_2.a.a, ~(~u_input.d | ~0i), var_2.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!vec4<bool>(true, true, true || global2.x, false));
    var var_1 = vec2<i32>(1i, reverseBits(max(_wgslsmith_add_i32(30469i, u_input.c), 1i)) ^ -(~u_input.b));
    global3 = ~_wgslsmith_div_vec3_u32(reverseBits(~reverseBits(vec3<u32>(0u, global3.x, global3.x))), ~(~vec3<u32>(1u, global3.x, 1u)));
    var var_2 = min(func_1(1u, u_input.a), abs(min(vec4<i32>(-36847i, var_1.x, var_1.x, 1i) ^ vec4<i32>(0i, u_input.c, var_1.x, var_1.x), abs(vec4<i32>(-37281i, var_1.x, var_1.x, 13393i)))));
    global4 = array<Struct_2, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(4294967295u));
}

