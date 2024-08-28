struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: array<Struct_3, 31>;

var<private> global2: vec3<f32>;

var<private> global3: i32 = -7555i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: bool) -> vec3<i32> {
    return vec3<i32>(u_input.c, u_input.c, 1i);
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = arg_0;
    var var_1 = arg_0;
    let var_2 = ~arg_0.a.x;
    let var_3 = ~vec2<i32>(min(1i, _wgslsmith_mult_i32(u_input.c, arg_0.c.x)) & 1i, arg_0.c.x);
    var var_4 = ~vec2<u32>(4294967295u | var_2, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~(~vec2<u32>(4294967295u, 1u))));
    return !(!select(var_0.d, true, true));
}

fn func_1(arg_0: u32, arg_1: f32) -> vec3<bool> {
    global1 = array<Struct_3, 31>();
    let var_0 = firstTrailingBit(func_2(vec2<i32>(-(u_input.c & u_input.c), u_input.c), Struct_2(vec2<bool>(true, true), arg_0, vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1)), Struct_1(firstLeadingBit(vec3<u32>(4294967295u, 1u, 18532u)), vec3<bool>(true, true, true), vec2<i32>(0i, u_input.c) | vec2<i32>(u_input.c, u_input.c), global0[_wgslsmith_index_u32(arg_0, 16u)] < 4294967295u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-403f)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-arg_1))), false));
    var var_1 = vec3<bool>(any(select(vec3<bool>(true, any(vec4<bool>(true, true, false, true)), 56842u != u_input.a), vec3<bool>(func_3(Struct_1(vec3<u32>(5362u, 40812u, u_input.b), vec3<bool>(true, true, true), var_0.zx, true)), true, true), false)), !(!func_3(Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 4294967295u, 1u), vec3<bool>(false, true, false), var_0.zz, true))), all(!vec3<bool>(true, func_3(Struct_1(vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 16u)], 16u)], 80620u), vec3<bool>(false, true, false), vec2<i32>(-1i, 32716i), false)), any(vec4<bool>(false, true, true, false)))));
    var_1 = !select(!select(!vec3<bool>(true, var_1.x, var_1.x), select(vec3<bool>(false, false, false), vec3<bool>(false, var_1.x, false), vec3<bool>(var_1.x, var_1.x, true)), all(vec3<bool>(var_1.x, true, var_1.x))), select(vec3<bool>(var_1.x, any(vec4<bool>(false, var_1.x, false, var_1.x)), true), vec3<bool>(true, true, true), select(!vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), false && var_1.x)), any(vec3<bool>(var_1.x, var_1.x, any(var_1.xx))));
    global0 = array<u32, 16>();
    return !select(!(!(!vec3<bool>(true, var_1.x, var_1.x))), vec3<bool>(var_1.x, var_1.x, func_3(Struct_1(vec3<u32>(18675u, global0[_wgslsmith_index_u32(u_input.a, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38714u, 16u)], 16u)]), vec3<bool>(true, var_1.x, var_1.x), vec2<i32>(56669i, -43884i), true))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), -816f != global2.x), vec3<bool>(true, true, 1i > u_input.c), vec3<bool>(all(vec4<bool>(false, true, true, true)), false, false)), vec3<bool>(false, all(vec2<bool>(true, true)), select(false, true, true) || true), !func_1(~global0[_wgslsmith_index_u32(1458u, 16u)], 751f)));
    var var_1 = ~select(~vec3<u32>(0u, u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~17684u, 16u)], 16u)]), select(reverseBits(vec3<u32>(u_input.a, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 16u)], 16u)]) ^ vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 16u)], u_input.b, 49726u)), firstTrailingBit(~vec3<u32>(1u, 39395u, u_input.a)), select(var_0.a.x, true, var_0.a.x) || false), !vec3<bool>(any(vec4<bool>(true, false, var_0.a.x, false)), true, true));
    global1 = array<Struct_3, 31>();
    var var_2 = Struct_1(~(~min(vec3<u32>(0u, u_input.a, 1u), ~vec3<u32>(1u, var_1.x, var_1.x))), select(select(var_0.a, vec3<bool>(var_0.a.x || false, func_1(u_input.a, 1465f).x, true), var_0.a.x), func_1(global0[_wgslsmith_index_u32(var_1.x, 16u)], global2.x), false), _wgslsmith_add_vec2_i32(~max(vec2<i32>(22588i, 27787i), vec2<i32>(u_input.c, u_input.c)), vec2<i32>(_wgslsmith_mod_i32(0i, u_input.c), u_input.c)) ^ (-firstTrailingBit(vec2<i32>(-1i, u_input.c)) >> (~vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 16u)]) % vec2<u32>(32u))), !var_0.a.x);
    var var_3 = select(-(~_wgslsmith_add_i32(_wgslsmith_mult_i32(var_2.c.x, var_2.c.x), ~var_2.c.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -31974i, ~(-29746i), var_2.c.x) & firstLeadingBit(~vec4<i32>(u_input.c, -48289i, 26313i, -1i)), _wgslsmith_clamp_vec4_i32(-firstLeadingBit(vec4<i32>(u_input.c, 57873i, var_2.c.x, -53940i)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(37446i, var_2.c.x, 39111i), vec3<i32>(25772i, 10793i, 2147483647i)), _wgslsmith_mod_i32(-44946i, -19394i), -14959i, u_input.c), -vec4<i32>(u_input.c, u_input.c, var_2.c.x, 1i))), false);
    var_2 = Struct_1(vec3<u32>(1u, abs(var_2.a.x), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(var_2.a, var_2.a), global0[_wgslsmith_index_u32(~57147u, 16u)])), vec3<bool>(false, !(var_0.a.x && select(true, false, true)), false), (var_2.c & vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_2.c.x, 2147483647i, var_2.c.x), vec4<i32>(-29236i, u_input.c, u_input.c, u_input.c)), -1i)) >> (firstTrailingBit(vec2<u32>(0u, 41384u)) % vec2<u32>(32u)), !func_1(_wgslsmith_mod_u32(23527u >> (global0[_wgslsmith_index_u32(1u, 16u)] % 32u), ~global0[_wgslsmith_index_u32(9412u, 16u)]), _wgslsmith_f_op_f32(863f * -1716f)).x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~vec3<i32>(i32(-1i) * -62252i, var_2.c.x, 2147483647i)), ~u_input.a, _wgslsmith_sub_u32(~var_2.a.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, max(global0[_wgslsmith_index_u32(var_2.a.x, 16u)] & var_1.x, var_1.x)), 16u)]), ~(countOneBits(vec3<u32>(4294967295u, 2310u, 1u)) ^ max(firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(var_1.x, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], 4294967295u)), vec3<u32>(0u, var_1.x, 13638u))));
}

