struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-1399f, 1i, 1386f, vec4<u32>(29443u, 22503u, 23216u, 49613u), vec3<u32>(0u, 0u, 34116u));

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, true);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> bool {
    var var_0 = !(!(!select(select(global1.wzy, vec3<bool>(true, global1.x, global1.x), global1.x), !vec3<bool>(global1.x, false, false), select(vec3<bool>(global1.x, true, true), global1.xzy, global1.x))));
    let var_1 = _wgslsmith_mult_i32(firstTrailingBit(reverseBits(u_input.a)), _wgslsmith_mod_i32(global0.b, max(_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a, u_input.a), firstTrailingBit(-1i)), arg_1)));
    global1 = vec4<bool>(true, true, var_0.x != true, all(vec3<bool>(var_0.x, all(global1.wxx), !all(global1.yxz))));
    var var_2 = select(-vec2<i32>(-19025i, firstTrailingBit(global0.b)), ~(-select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -35191i), var_0.x)), var_0.x) ^ ~(-max(vec2<i32>(-1i, var_1), vec2<i32>(u_input.a, u_input.a)) ^ select(vec2<i32>(global0.b, 1i), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1, -62585i), vec2<i32>(var_1, global0.b)), select(vec2<bool>(var_0.x, false), vec2<bool>(true, true), var_0.zy)));
    global0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.c))), u_input.a, 697f, vec4<u32>(4294967295u, 31250u, _wgslsmith_div_u32(arg_2.a, arg_0), max(global0.d.x << (40945u % 32u), 38210u)), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(49103u, arg_2.a, 46589u), vec3<u32>(arg_0, 1u, arg_2.a)), select(~vec3<u32>(0u, 35621u, arg_0), select(global0.d.ywx, global0.d.yyy, vec3<bool>(global1.x, var_0.x, var_0.x)), any(vec2<bool>(true, false)))), min(vec3<u32>(~global0.e.x, ~0u, 20516u), global0.e)));
    return var_0.x;
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = global0.b << (abs(31838u) % 32u);
    let var_1 = Struct_3(global0.a, abs(min(global0.b, -global0.b)), 777f, ~(_wgslsmith_add_vec4_u32(global0.d, global0.d) ^ global0.d), ~(abs(global0.e) & reverseBits(global0.d.xwz)));
    global1 = vec4<bool>(true != func_3(select(11769u, global0.e.x, global1.x), global0.b, Struct_2(var_1.e.x)), global1.x, !func_3(_wgslsmith_dot_vec4_u32(var_1.d, var_1.d), ~32306i, Struct_2(var_1.d.x)) | func_3(1u, _wgslsmith_mult_i32(u_input.a, global0.b) | -24090i, Struct_2(firstLeadingBit(1u))), true);
    let var_2 = global1.xz;
    let var_3 = 12356u;
    return Struct_2(global0.d.x);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec3<bool>, arg_3: u32) -> vec2<i32> {
    global1 = !vec4<bool>(global1.x || any(!arg_2.xy), (!global1.x == true) | (any(vec2<bool>(global1.x, false)) == (false | global1.x)), false, func_3(arg_3 << (arg_3 % 32u), global0.b, func_2(-1594f)));
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1000f)))), arg_1) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(select(-1229f, -399f, true))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a - arg_1) + arg_1)), 2023f));
    let var_1 = _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a, u_input.a), _wgslsmith_dot_vec3_i32(~vec3<i32>(i32(-1i) * -38179i, global0.b, 1i), vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global0.b, 50356i, global0.b), vec4<i32>(u_input.a, global0.b, u_input.a, 2147483647i)), 1i, -1i)));
    global0 = Struct_3(var_0.x, -2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(sign(1000f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) - _wgslsmith_f_op_f32(arg_1 + -901f))), abs(global0.d), vec3<u32>(arg_0.a, max(arg_0.a, global0.d.x) >> ((_wgslsmith_clamp_u32(108080u, 2971u, 1u) ^ 0u) % 32u), _wgslsmith_mult_u32(13193u, select(~arg_0.a, reverseBits(global0.e.x), !arg_2.x))));
    let var_2 = 0i;
    return _wgslsmith_add_vec2_i32(-vec2<i32>(1i, u_input.a) >> (vec2<u32>(~arg_3, countOneBits(4294967295u) << ((34209u << (arg_3 % 32u)) % 32u)) % vec2<u32>(32u)), ~vec2<i32>(u_input.a, -36736i));
}

fn func_1() -> Struct_3 {
    var var_0 = (abs(-(~global0.b)) == -61972i) | global1.x;
    let var_1 = 1i;
    let var_2 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(func_4(func_2(_wgslsmith_f_op_f32(select(global0.c, global0.a, true))), global0.a, select(select(vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, global1.x, global1.x), true), global1.xxx, true), ~(~global0.d.x)), -vec2<i32>(~(-70121i), _wgslsmith_mod_i32(1i, u_input.a))), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -9640i), vec2<i32>(-1i, 1i)), ~(-1i)), var_1), ~countOneBits(countOneBits(vec2<i32>(var_1, var_1)))));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(global0.c + 1f), ~(-_wgslsmith_mult_i32(~(-12455i), _wgslsmith_add_i32(var_2.x, 126i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1000f, -869f, false)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)))), max((global0.d & global0.d) << (global0.d % vec4<u32>(32u)), min(countOneBits(vec4<u32>(1u, 1u, global0.d.x, 4294967295u)), ~vec4<u32>(35072u, global0.d.x, global0.d.x, 527u)) | vec4<u32>(global0.e.x, ~49589u, select(global0.e.x, global0.e.x, global1.x), 3267u)), min(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(global0.e.x, global0.e.x, global0.d.x)), select(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.d.x, global0.e.x, global0.d.x), vec3<u32>(global0.e.x, global0.d.x, 4294967295u)), ~global0.d.zwy, false)), ~global0.e));
    return Struct_3(_wgslsmith_f_op_f32(global0.c + var_3.a), ~(~(~var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.c)) + _wgslsmith_f_op_f32(-var_3.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a * 216f) + _wgslsmith_f_op_f32(-var_3.c)))), global0.d, ~var_3.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(firstLeadingBit(abs(vec4<i32>(u_input.a, 1i, u_input.a, u_input.a)))), max(countOneBits(-max(vec4<i32>(u_input.a, -29168i, u_input.a, 71311i), vec4<i32>(0i, -2147483647i, global0.b, 0i))), vec4<i32>(max(global0.b, _wgslsmith_clamp_i32(u_input.a, u_input.a, 21252i)), global0.b, ~(~u_input.a), 1i)), countOneBits(_wgslsmith_div_vec3_i32(-vec3<i32>(1i, -18061i, u_input.a), vec3<i32>(global0.b, u_input.a, u_input.a) & vec3<i32>(0i, u_input.a, 6488i)) ^ select(vec3<i32>(61789i, u_input.a, global0.b), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -9564i, u_input.a), vec3<i32>(u_input.a, 4855i, 9696i)), !global1.zzy)), ~_wgslsmith_sub_i32(global0.b, global0.b));
}

