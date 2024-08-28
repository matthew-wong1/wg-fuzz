struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(vec3<bool>(false, false, false), 1i, vec4<bool>(false, false, true, true)), Struct_3(vec3<bool>(true, false, true), 2147483647i, vec4<bool>(true, false, true, true)), Struct_3(vec3<bool>(false, true, true), i32(-2147483648), vec4<bool>(false, false, true, false)), Struct_3(vec3<bool>(true, false, true), 1i, vec4<bool>(false, false, true, false)), Struct_3(vec3<bool>(true, true, false), 53600i, vec4<bool>(false, false, true, false)), Struct_3(vec3<bool>(true, false, false), 1i, vec4<bool>(false, false, false, false)), Struct_3(vec3<bool>(false, false, false), 0i, vec4<bool>(false, false, false, false)), Struct_3(vec3<bool>(true, true, true), 1i, vec4<bool>(true, false, true, true)), Struct_3(vec3<bool>(true, true, true), -1i, vec4<bool>(true, false, true, true)), Struct_3(vec3<bool>(false, true, false), -29169i, vec4<bool>(false, true, true, false)), Struct_3(vec3<bool>(false, true, true), -33801i, vec4<bool>(false, true, false, false)), Struct_3(vec3<bool>(false, true, false), -9667i, vec4<bool>(true, true, true, true)), Struct_3(vec3<bool>(true, true, true), 0i, vec4<bool>(true, false, false, false)), Struct_3(vec3<bool>(false, true, true), -62298i, vec4<bool>(true, false, true, true)), Struct_3(vec3<bool>(false, true, false), 2147483647i, vec4<bool>(true, false, false, false)), Struct_3(vec3<bool>(true, true, true), -31627i, vec4<bool>(false, true, false, true)), Struct_3(vec3<bool>(false, false, false), 0i, vec4<bool>(false, false, false, false)), Struct_3(vec3<bool>(true, false, true), 2147483647i, vec4<bool>(false, true, true, false)), Struct_3(vec3<bool>(true, false, false), i32(-2147483648), vec4<bool>(false, false, false, true)), Struct_3(vec3<bool>(false, false, false), -18016i, vec4<bool>(false, true, true, false)), Struct_3(vec3<bool>(false, false, true), -18943i, vec4<bool>(false, true, false, true)));

var<private> global2: array<f32, 1>;

var<private> global3: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(vec3<bool>(true, true, false), 29471i, vec4<bool>(false, false, true, true)), Struct_3(vec3<bool>(true, false, true), 25275i, vec4<bool>(false, false, false, true)), Struct_3(vec3<bool>(true, true, true), 1i, vec4<bool>(true, true, false, false)), Struct_3(vec3<bool>(false, true, true), -43854i, vec4<bool>(false, false, false, true)), Struct_3(vec3<bool>(false, true, true), -1i, vec4<bool>(true, false, false, true)), Struct_3(vec3<bool>(false, true, true), -11604i, vec4<bool>(false, true, false, true)), Struct_3(vec3<bool>(false, true, true), 2147483647i, vec4<bool>(true, false, true, false)), Struct_3(vec3<bool>(true, true, false), 8932i, vec4<bool>(false, false, false, true)), Struct_3(vec3<bool>(false, false, false), i32(-2147483648), vec4<bool>(false, false, false, true)), Struct_3(vec3<bool>(false, true, true), -1i, vec4<bool>(true, false, true, true)), Struct_3(vec3<bool>(true, false, true), -8687i, vec4<bool>(true, true, false, false)));

var<private> global4: Struct_4;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32) -> vec3<i32> {
    global0 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global4.b, i32(-1i) * -41649i, 13985i, ~u_input.a.x), max(~vec4<i32>(global0.x, 1i, u_input.a.x, global0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(31354i, global4.b, 23229i, 72114i), vec4<i32>(-2147483647i, global0.x, global0.x, 0i)))), _wgslsmith_mod_i32(~(-13868i) | _wgslsmith_div_i32(-1i, u_input.a.x), 0i), 41844i), select((_wgslsmith_add_vec3_i32(vec3<i32>(19876i, -52661i, 0i), vec3<i32>(global4.b, -54152i, 2147483647i)) >> (max(vec3<u32>(1u, 0u, 0u), vec3<u32>(8693u, 1u, 0u)) % vec3<u32>(32u))) | vec3<i32>(min(global4.b, global0.x), -1i, -30938i), vec3<i32>(~(i32(-1i) * -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-25710i, global4.b, 2147483647i), vec3<i32>(-9245i, 9988i, 0i) | vec3<i32>(global4.b, global0.x, u_input.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global4.b, u_input.a.x), min(vec3<i32>(u_input.a.x, -1i, 0i), vec3<i32>(2147483647i, 13861i, global0.x)))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true))));
    global3 = array<Struct_3, 11>();
    let var_0 = Struct_3(!(!vec3<bool>(true, false, -39197i >= global4.b)), select(-2147483647i, 1i, !all(vec4<bool>(true, false, false, false))) & _wgslsmith_mult_i32(u_input.a.x, 25897i), vec4<bool>(true, true, select(true, true, true), true));
    var var_1 = Struct_1(vec2<f32>(global2[_wgslsmith_index_u32(0u, 1u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1235f - -993f))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~(~1u)), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(107211u, 2143u, 6131u, 0u), vec4<u32>(4294967295u, 23174u, 21029u, 87252u)), 1u)), select(var_0.c.wwz, var_0.c.zwy, !var_0.c.yzy), -36115i);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.a.x, var_1.a.x))), _wgslsmith_f_op_vec2_f32(-var_1.a))))), 1u & (var_1.b & ~firstTrailingBit(18046u)), var_1.c, -2147483647i);
    return -reverseBits(vec3<i32>(~abs(-1i), 24557i, firstLeadingBit(9692i)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: bool) -> vec4<f32> {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-892f, 1318f))), -285f, 1384f, _wgslsmith_f_op_f32(trunc(399f))) * vec4<f32>(_wgslsmith_f_op_f32(floor(global4.a.x)), global2[_wgslsmith_index_u32(0u, 1u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 1u)] - -1080f), 1414f)), ~global4.b);
    global0 = func_3(1444f);
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global4.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.x, 1000f, -165f, arg_0.x) + vec4<f32>(-179f, global2[_wgslsmith_index_u32(0u, 1u)], arg_0.x, 653f)) + vec4<f32>(-740f, 601f, 2258f, var_0.a.x)), arg_2)))));
}

fn func_1() -> Struct_3 {
    global2 = array<f32, 1>();
    global0 = _wgslsmith_mult_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, u_input.a.x, global0.x), -_wgslsmith_div_vec3_i32(vec3<i32>(-42267i, -2147483647i, global4.b), vec3<i32>(global4.b, global0.x, global4.b))), firstTrailingBit(vec3<i32>(-1i) * -(vec3<i32>(global0.x, global4.b, global0.x) ^ vec3<i32>(7110i, -1i, u_input.a.x))));
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_2(vec2<f32>(_wgslsmith_f_op_f32(global4.a.x * global4.a.x), global2[_wgslsmith_index_u32(1u, 1u)]), _wgslsmith_clamp_vec2_i32(global0.xz, ~vec2<i32>(1i, global4.b), vec2<i32>(u_input.a.x, u_input.a.x)), !(global4.a.x == 1794f))))), 0i);
    var var_1 = global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(~(~_wgslsmith_clamp_u32(4294967295u, 1u, 4294967295u)), 0u)), 11u)];
    var var_2 = u_input.a.x;
    return Struct_3(vec3<bool>(any(select(vec2<bool>(false, var_1.a.x), vec2<bool>(true, true), vec2<bool>(false, var_1.a.x))), !(-1i >= u_input.a.x) | var_1.a.x, true), global4.b, vec4<bool>(!var_1.a.x, true, any(var_1.a.zz), any(var_1.c.xwz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(global2[_wgslsmith_index_u32(~32109u, 1u)], _wgslsmith_f_op_f32(floor(-1177f)), _wgslsmith_f_op_f32(round(global4.a.x)));
    global3 = array<Struct_3, 11>();
    global1 = array<Struct_3, 21>();
    let var_1 = func_1();
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(global4.a.wz - vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(36531u, 1u)] * var_0.x))), firstLeadingBit(40756u), vec3<bool>(!(!var_1.c.x), var_1.a.x, any(!vec3<bool>(var_1.c.x, true, var_1.c.x))), 1i);
    var var_3 = ~((vec3<i32>(~(-1i), var_1.b, global4.b) & -select(vec3<i32>(489i, 58883i, var_1.b), vec3<i32>(7392i, 2147483647i, var_2.d), vec3<bool>(false, var_1.a.x, var_1.c.x))) >> (firstTrailingBit(vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)));
    global1 = array<Struct_3, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(1677f, _wgslsmith_div_vec4_i32(vec4<i32>(~_wgslsmith_div_i32(u_input.a.x, -1i), _wgslsmith_clamp_i32(1i, ~(-1i), 10098i), ~(~2147483647i), firstLeadingBit(_wgslsmith_mod_i32(global0.x, 0i))), vec4<i32>(global0.x, reverseBits(u_input.a.x), var_2.d, 1i)));
}

