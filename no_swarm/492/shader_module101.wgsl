struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: bool;

var<private> global2: i32;

var<private> global3: i32 = 0i;

var<private> global4: array<f32, 31>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: f32) -> vec3<i32> {
    var var_0 = ~1u;
    global0 = select(select(select(!vec3<bool>(true, false, global0.x), !(!vec3<bool>(global0.x, true, global0.x)), false | any(vec2<bool>(global0.x, true))), select(!(!vec3<bool>(global0.x, global0.x, global0.x)), vec3<bool>(true, global0.x, false), select(32665u, arg_2.a.x, true) >= (4294967295u | arg_2.a.x)), !(!(!global0.x))), vec3<bool>(false, global0.x, global0.x), select(select(!select(vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, true, false), false), !select(vec3<bool>(false, true, global0.x), vec3<bool>(false, global0.x, global0.x), global0.x), global0.x), vec3<bool>(any(!vec3<bool>(true, global0.x, global0.x)), true, global0.x), (_wgslsmith_sub_i32(arg_1.x, arg_2.b.x) << (53759u % 32u)) <= _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 14543i, -2147483647i, arg_1.x) ^ vec4<i32>(u_input.a, -7237i, u_input.a, arg_1.x), max(vec4<i32>(-18954i, 36932i, -34941i, -2147483647i), vec4<i32>(u_input.a, arg_1.x, 38114i, 21924i)))));
    return arg_1;
}

fn func_2() -> bool {
    var var_0 = global0.x;
    let var_1 = Struct_2(~(~reverseBits(firstLeadingBit(vec2<u32>(22176u, 0u)))), Struct_1(vec4<u32>(~48236u, ~0u, _wgslsmith_mult_u32(0u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(24718u, 42482u, 0u))) << (select(firstTrailingBit(vec4<u32>(24869u, 4294967295u, 91195u, 46060u)), reverseBits(vec4<u32>(79051u, 77938u, 0u, 0u)), global0.x) % vec4<u32>(32u)), _wgslsmith_sub_vec3_i32(max(vec3<i32>(2147483647i, 21162i, 32435i) & vec3<i32>(u_input.a, u_input.a, 1i), reverseBits(vec3<i32>(u_input.a, 23742i, 1i))), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), func_3(Struct_1(vec4<u32>(1u, 1u, 9380u, 23045u), vec3<i32>(u_input.a, 1i, u_input.a)), vec3<i32>(0i, u_input.a, 43062i), Struct_1(vec4<u32>(460u, 33446u, 0u, 0u), vec3<i32>(u_input.a, u_input.a, u_input.a)), -1340f)))), firstTrailingBit(u_input.a), _wgslsmith_f_op_f32(-1989f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1024f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(4294967295u, 31u)] - global4[_wgslsmith_index_u32(2320u, 31u)]))))), any(select(select(vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, global0.x, global0.x), all(global0.xz)), !(!vec3<bool>(true, global0.x, global0.x)), -u_input.a < (125i << (0u % 32u)))));
    global2 = -(~(~u_input.a));
    var var_2 = -vec2<i32>(_wgslsmith_div_i32(-_wgslsmith_mult_i32(-1i, 23403i), var_1.c), 1i);
    var var_3 = ~countOneBits(-var_1.b.b.x);
    return !all(select(select(!vec4<bool>(global0.x, var_1.e, false, var_1.e), !vec4<bool>(var_1.e, true, global0.x, false), any(vec4<bool>(false, var_1.e, global0.x, true))), select(!vec4<bool>(var_1.e, global0.x, global0.x, global0.x), vec4<bool>(false, false, false, true), !var_1.e), vec4<bool>(false, all(global0.zx), global0.x | true, all(vec3<bool>(true, var_1.e, var_1.e)))));
}

fn func_1() -> f32 {
    var var_0 = 5496u;
    var var_1 = !vec4<bool>(true, all(vec2<bool>(func_2(), global0.x)), any(vec4<bool>(!global0.x, false, true, true)), true);
    global2 = select((u_input.a | 0i) | countOneBits(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -20067i, -2147483647i), vec3<i32>(u_input.a, 3023i, u_input.a)))), u_input.a, true);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 31u)]), global4[_wgslsmith_index_u32(~reverseBits(firstTrailingBit(4832u)), 31u)])) + 764f);
    global1 = true;
    return -484f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(~1u, 31u)])), _wgslsmith_f_op_f32(trunc(-692f)), 907f), vec3<f32>(_wgslsmith_f_op_f32(func_1()), -1000f, -1996f));
    let var_1 = global0.x;
    global0 = !vec3<bool>(true, u_input.a >= 37913i, true);
    let var_2 = vec2<i32>(~u_input.a, reverseBits(abs(abs(u_input.a))) << (43045u % 32u));
    let var_3 = countOneBits(86161u ^ _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(0u, 1u, 46499u, 16046u)), vec4<u32>(max(4294967295u, 62315u), firstLeadingBit(0u), ~0u, abs(0u))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~reverseBits(firstTrailingBit(reverseBits(vec3<u32>(var_3, 1u, var_3)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(var_0)))));
}

