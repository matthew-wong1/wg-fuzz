struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec3<bool>, 16>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(208f + -427f);
    var var_1 = ~54634u;
    var var_2 = true;
    var var_3 = arg_1;
    var var_4 = max(~countOneBits(~vec4<i32>(2147483647i, -17485i, -42914i, -1i) << (~vec4<u32>(u_input.c.x, arg_0, global0.x, 10572u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_sub_i32(firstTrailingBit(48897i), _wgslsmith_clamp_i32(var_3.e.x, -2147483647i, 33372i) | -2147483647i), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_3.e.x, 20893i, arg_2.e.x, 7115i), vec4<i32>(arg_2.e.x, 1i, arg_2.e.x, arg_2.e.x)), vec4<i32>(755i, 34048i, var_3.e.x, -14021i)), vec4<i32>(u_input.b, arg_1.e.x, -2147483647i, min(0i, var_3.e.x))), abs(-u_input.b >> (1u % 32u)), -40932i));
    return ~_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(~arg_1.b, ~vec3<u32>(97935u, u_input.a, global0.x)), _wgslsmith_mod_vec3_u32(abs(arg_1.c), vec3<u32>(arg_1.c.x, 17945u, 40847u))) & ~arg_2.b;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>) -> vec3<u32> {
    let var_0 = firstTrailingBit(arg_1.b.x);
    var var_1 = arg_1;
    global0 = var_1.b;
    let var_2 = -var_1.e.xx;
    var var_3 = 1i;
    return ~(~func_3(reverseBits(_wgslsmith_div_u32(0u, 48073u)), Struct_1(false != var_1.a, arg_1.c, abs(u_input.c), select(vec3<bool>(false, true, var_1.a), vec3<bool>(true, true, false), vec3<bool>(arg_2.x, false, false)), arg_1.e << (vec3<u32>(102700u, global0.x, global0.x) % vec3<u32>(32u))), Struct_1(false, ~vec3<u32>(80433u, global0.x, 4294967295u), reverseBits(vec3<u32>(1u, global0.x, u_input.c.x)), !arg_2, vec3<i32>(-49577i, -1i, 0i)), !all(vec4<bool>(false, var_1.d.x, false, arg_2.x))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = 32368u;
    let var_1 = Struct_1(arg_1.a, select(arg_1.b, vec3<u32>(0u, 28248u, _wgslsmith_sub_u32(min(var_0, 23755u), u_input.d)), global1[_wgslsmith_index_u32(~28993u, 16u)]), ~arg_1.b, select(global1[_wgslsmith_index_u32(~(var_0 ^ _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.x, 4294967295u, 0u, u_input.a), vec4<u32>(2979u, arg_1.c.x, global0.x, 3632u))), 16u)], vec3<bool>(!(!arg_1.d.x), any(!vec4<bool>(false, arg_1.d.x, false, false)), true), true), -(vec3<i32>(-1i) * -vec3<i32>(2147483647i, -2147483647i, arg_1.e.x)));
    var var_2 = ~max(~_wgslsmith_add_vec3_u32(arg_1.c, arg_1.b), u_input.c);
    var var_3 = Struct_1(u_input.b != 13411i, vec3<u32>(~(~var_1.c.x) >> (arg_1.c.x % 32u), 4294967295u, u_input.c.x), vec3<u32>(_wgslsmith_div_u32(u_input.a, ~_wgslsmith_div_u32(0u, var_1.b.x)), 0u, 1u), vec3<bool>(all(var_1.d), true, false), arg_1.e);
    var var_4 = Struct_1(true, vec3<u32>(_wgslsmith_mult_u32(arg_1.b.x & max(var_3.b.x, u_input.c.x), ~var_0 >> (func_2(-867f, Struct_1(var_3.a, vec3<u32>(arg_0, 4294967295u, arg_0), arg_1.b, global1[_wgslsmith_index_u32(5725u, 16u)], vec3<i32>(u_input.b, -2147483647i, u_input.b)), vec3<bool>(arg_1.a, true, false)).x % 32u)), var_0, firstTrailingBit(38524u)), firstLeadingBit(max(func_2(1803f, arg_1, global1[_wgslsmith_index_u32(arg_1.c.x, 16u)]), _wgslsmith_sub_vec3_u32(var_3.b, vec3<u32>(global0.x, 61031u, var_2.x)))) & ~(~var_1.b), !vec3<bool>(true, true, var_3.d.x && var_3.d.x), -vec3<i32>(-arg_1.e.x, 33056i ^ _wgslsmith_mult_i32(var_1.e.x, u_input.b), arg_2.x));
    return Struct_1(select(false, !((i32(-1i) * -4897i) <= _wgslsmith_sub_i32(-2147483647i, arg_1.e.x)), var_4.a), _wgslsmith_div_vec3_u32(arg_1.c, var_1.b), firstLeadingBit(var_1.c), !select(select(select(arg_1.d, vec3<bool>(true, false, false), vec3<bool>(true, var_3.d.x, var_3.d.x)), select(vec3<bool>(arg_1.d.x, true, arg_1.d.x), vec3<bool>(false, true, var_3.d.x), vec3<bool>(var_1.d.x, false, arg_1.a)), var_1.d.x), arg_1.d, select(vec3<bool>(var_3.a, var_4.a, arg_1.d.x), var_4.d, arg_1.d)), _wgslsmith_add_vec3_i32(countOneBits(abs(vec3<i32>(arg_1.e.x, 10047i, var_1.e.x))), var_3.e));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = vec2<f32>(-1121f, _wgslsmith_div_f32(1416f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-769f - _wgslsmith_f_op_f32(1145f - -1419f)) - _wgslsmith_f_op_f32(min(-1343f, -513f)))));
    var var_1 = Struct_1(arg_1.x, arg_0.c, arg_0.c, vec3<bool>(arg_0.d.x & any(select(vec4<bool>(false, true, true, true), vec4<bool>(arg_2.a, arg_1.x, true, true), vec4<bool>(arg_2.a, arg_2.d.x, arg_2.a, true))), arg_2.d.x, arg_1.x && arg_2.d.x), ~arg_2.e);
    var var_2 = true;
    var_1 = func_4(~_wgslsmith_mult_u32(40100u, ~arg_2.c.x), Struct_1(any(arg_1), ~func_2(var_0.x, Struct_1(var_1.d.x, arg_2.c, vec3<u32>(1u, u_input.c.x, 1u), vec3<bool>(arg_2.d.x, arg_1.x, false), arg_2.e), select(vec3<bool>(arg_0.a, true, true), var_1.d, false)), vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.d, 53067u), vec4<u32>(14270u, 0u, 14662u, arg_2.c.x)), ~_wgslsmith_add_u32(0u, 60782u), u_input.d), !(!arg_2.d), arg_2.e), -_wgslsmith_mult_vec4_i32(vec4<i32>(min(2147483647i, arg_0.e.x), abs(-53940i), var_1.e.x, i32(-1i) * -2147483647i), (vec4<i32>(arg_0.e.x, -28535i, arg_2.e.x, arg_0.e.x) >> (vec4<u32>(arg_2.b.x, 110909u, 7453u, 0u) % vec4<u32>(32u))) >> (~vec4<u32>(arg_2.b.x, global0.x, 4294967295u, global0.x) % vec4<u32>(32u))));
    var var_3 = countOneBits(global0.yx);
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec3<i32>(_wgslsmith_mult_i32(-u_input.b, -2147483647i >> (global0.x % 32u)), i32(-1i) * -59672i, ~34766i);
    var var_1 = Struct_1(_wgslsmith_sub_u32(17629u, _wgslsmith_mult_u32(~u_input.a, ~0u)) < 0u, vec3<u32>(~u_input.d, ~global0.x, 4294967295u) >> (_wgslsmith_add_vec3_u32(u_input.c, _wgslsmith_div_vec3_u32(func_1(Struct_1(true, vec3<u32>(1u, 38086u, 4294967295u), vec3<u32>(u_input.c.x, 0u, u_input.a), global1[_wgslsmith_index_u32(u_input.c.x, 16u)], var_0), vec4<bool>(false, false, true, false), Struct_1(true, u_input.c, vec3<u32>(4294967295u, 4294967295u, 66028u), global1[_wgslsmith_index_u32(4294967295u, 16u)], vec3<i32>(var_0.x, var_0.x, u_input.b))), u_input.c)) % vec3<u32>(32u)), min(~u_input.c, u_input.c << (func_1(Struct_1(true, vec3<u32>(114923u, 0u, u_input.a), vec3<u32>(2312u, 62731u, 3651u), global1[_wgslsmith_index_u32(3474u, 16u)], var_0), vec4<bool>(true, true, true, true), Struct_1(false, vec3<u32>(global0.x, u_input.d, 0u), u_input.c, global1[_wgslsmith_index_u32(4294967295u, 16u)], var_0)) % vec3<u32>(32u))), vec3<bool>(true, true, false), ~firstTrailingBit(var_0));
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1768f)) * _wgslsmith_div_f32(2737f, -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -903f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -162f), _wgslsmith_f_op_f32(select(819f, 1885f, false))))), _wgslsmith_f_op_f32(max(-172f, -1581f)))));
    global1 = array<vec3<bool>, 16>();
    var var_3 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(44226u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_f32(trunc(-167f)), -1422f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.x, -1238f)) * var_2.x)));
}

