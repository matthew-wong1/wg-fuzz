struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: f32,
    d: vec2<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 7>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3) -> bool {
    global0 = array<vec4<bool>, 7>();
    return arg_0.x;
}

fn func_3(arg_0: u32, arg_1: f32) -> i32 {
    var var_0 = false;
    let var_1 = false;
    let var_2 = u_input.a;
    var_0 = any(!select(vec2<bool>(true, true), vec2<bool>(!var_1, all(vec3<bool>(var_1, var_1, false))), vec2<bool>(true | var_1, var_1)));
    var_0 = select(var_1, true, all(select(select(!vec3<bool>(var_1, false, true), vec3<bool>(true, var_1, var_1), vec3<bool>(false, true, var_1)), select(select(vec3<bool>(false, var_1, false), vec3<bool>(false, var_1, false), var_1), select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(false, var_1, var_1), vec3<bool>(var_1, false, false)), false), true)));
    return reverseBits(var_2);
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_2(reverseBits(-_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)), vec2<i32>(0i, u_input.a) ^ vec2<i32>(-1i, -28507i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -811f), 1533f), Struct_1(_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(u_input.a, u_input.a) | vec2<i32>(-2147483647i, 2147483647i)), vec2<i32>(u_input.a, -2377i)), vec4<f32>(-181f, -2431f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -644f), 1f)), -797f), -vec2<i32>(u_input.a, ~0i), !vec4<bool>(any(vec3<bool>(true, true, false)), func_2(vec2<bool>(true, false), Struct_3(Struct_1(vec2<i32>(u_input.a, 2147483647i), vec4<f32>(641f, -192f, 679f, 1000f), vec2<i32>(u_input.a, u_input.a), global0[_wgslsmith_index_u32(100964u, 7u)]), vec3<i32>(u_input.a, u_input.a, -6289i), vec2<bool>(false, true))), true, func_2(vec2<bool>(true, true), Struct_3(Struct_1(vec2<i32>(1i, 1i), vec4<f32>(-403f, 2705f, 499f, 335f), vec2<i32>(-2147483647i, u_input.a), vec4<bool>(false, true, true, true)), vec3<i32>(u_input.a, u_input.a, -11299i), vec2<bool>(false, false))))), Struct_1(firstTrailingBit(vec2<i32>(reverseBits(u_input.a), u_input.a)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-667f, 1318f, -558f, -524f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(178f, -1154f, 249f, -336f), vec4<f32>(-1000f, 1359f, 1000f, -325f), false))))), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, u_input.a), ~vec2<i32>(u_input.a, -1i)) ^ _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-6492i, 16080i), vec2<i32>(1i, -7257i)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 15082i), vec2<i32>(u_input.a, u_input.a))), select(global0[_wgslsmith_index_u32(1u, 7u)], !(!global0[_wgslsmith_index_u32(4294967295u, 7u)]), true)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-346f, 131f)))))))));
    let var_1 = vec2<i32>(34818i, 1i);
    var var_2 = Struct_4(1u, -vec3<i32>(func_3(max(1u, 0u), _wgslsmith_f_op_f32(f32(-1f) * -1702f)), _wgslsmith_mult_i32(var_0.a.x, -14132i) ^ 2147483647i, _wgslsmith_clamp_i32(~(-2147483647i), -46230i, i32(-1i) * -2147483647i)));
    var var_3 = ~(-vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, 2147483647i, var_2.b.x, 30405i), _wgslsmith_mult_vec4_i32(vec4<i32>(-12508i, var_2.b.x, var_0.c.c.x, 15486i), vec4<i32>(2147483647i, var_2.b.x, var_0.a.x, 4156i))), var_2.b.x & _wgslsmith_add_i32(1i, -28392i), func_3(var_2.a | 9790u, -901f), ~var_1.x >> (57875u % 32u)));
    var_3 = vec4<i32>(-2147483647i, ~(~1i), var_3.x, abs(var_1.x));
    return Struct_3(var_0.d, (vec3<i32>(-2147483647i, ~(-1i), _wgslsmith_div_i32(-11127i, 74167i)) >> (~(~vec3<u32>(var_2.a, 1u, 27723u)) % vec3<u32>(32u))) | var_3.xzz, var_0.d.d.yy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = max(~(~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(91527u, 6825u)), vec2<u32>(28503u, 0u))), 1u);
    var var_2 = Struct_3(Struct_1(var_0.b.xx, var_0.a.b, var_0.a.a, !vec4<bool>(var_0.a.d.x, true, !var_0.c.x, var_0.a.d.x)), ~firstTrailingBit(var_0.b), var_0.a.d.wz);
    var_1 = max(4294967295u, 1u);
    var var_3 = Struct_1(vec2<i32>(reverseBits(func_3(_wgslsmith_div_u32(4294967295u, 1u), 1f)), -1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-990f, 413f, -1460f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-689f - -600f) + _wgslsmith_f_op_f32(var_2.a.b.x - 1652f)))), var_0.b.xz, vec4<bool>(var_0.a.d.x, true, !var_2.c.x, false));
    global0 = array<vec4<bool>, 7>();
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_2.a.b.zxy, _wgslsmith_div_vec3_f32(vec3<f32>(var_2.a.b.x, -2080f, 1070f), var_2.a.b.zzw), vec3<bool>(var_0.a.d.x, var_3.d.x, var_2.a.d.x)))))), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(-51852i, -45976i), i32(-1i) * -2147483647i), max(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_3.a.x, -4878i), vec3<i32>(16627i, 0i, u_input.a)) ^ var_3.c.x, 51046i)), -select((46165i << (0u % 32u)) | _wgslsmith_add_i32(var_3.c.x, var_2.b.x), ~(i32(-1i) * -2147483647i), true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(612f - -129f))))));
}

