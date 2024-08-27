struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(-1i), Struct_2(-1i), Struct_2(1i), Struct_2(0i), Struct_2(-49222i), Struct_2(-1i), Struct_2(-30917i), Struct_2(-21801i), Struct_2(39534i), Struct_2(3099i), Struct_2(2147483647i), Struct_2(1i), Struct_2(i32(-2147483648)), Struct_2(-20283i), Struct_2(i32(-2147483648)));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: Struct_4) -> vec2<u32> {
    let var_0 = arg_2.x;
    global0 = array<Struct_2, 15>();
    let var_1 = !select(!vec4<bool>(any(vec4<bool>(arg_3.a, false, arg_3.a, true)), !arg_3.a, true, false), !(!select(vec4<bool>(false, false, arg_3.a, true), vec4<bool>(arg_3.a, arg_3.a, arg_1.a, arg_1.a), vec4<bool>(true, arg_3.a, arg_3.a, true))), false);
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.x + 1267f)));
    var var_3 = 63044u;
    return vec2<u32>(~_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(112261u, u_input.c, 39799u, 0u) & vec4<u32>(arg_1.b, 4294967295u, 34600u, u_input.c), ~vec4<u32>(u_input.b.x, arg_0.x, 0u, 411u))), u_input.a);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<i32>) -> f32 {
    global0 = array<Struct_2, 15>();
    let var_0 = Struct_1(~select(max(firstLeadingBit(vec3<u32>(u_input.b.x, 0u, 4294967295u)), vec3<u32>(u_input.c, u_input.c, u_input.c) | vec3<u32>(u_input.b.x, u_input.b.x, u_input.c)), vec3<u32>(countOneBits(u_input.a), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x), 96786u), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), false), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false))), !select(true, true, false)), -1121f, u_input.b);
    var var_1 = vec3<i32>(-1i, 2147483647i, arg_1.x);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -844f)), _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(abs(var_0.c))));
    let var_3 = !select(!(!(!vec2<bool>(var_0.b.x, var_0.b.x))), select(!var_0.b.zw, var_0.b.yw, all(select(var_0.b, vec4<bool>(false, false, false, var_0.b.x), vec4<bool>(var_0.b.x, false, true, false)))), true);
    return _wgslsmith_f_op_f32(-var_0.c);
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: f32, arg_3: vec3<i32>) -> vec4<u32> {
    let var_0 = ~_wgslsmith_dot_vec3_i32(arg_3 ^ abs(arg_3), vec3<i32>(~arg_1, _wgslsmith_sub_i32(2147483647i, 2147483647i), countOneBits(44775i))) ^ ~arg_1;
    let var_1 = Struct_2(-1i);
    let var_2 = true;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1452f * _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(round(1221f)))), arg_2);
    var var_4 = Struct_3(vec2<bool>(false, false), _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))))));
    return firstTrailingBit(countOneBits(vec4<u32>(arg_0.x, 4294967295u, u_input.c, u_input.b.x) >> (vec4<u32>(4294967295u, 1u, u_input.a, 97862u) % vec4<u32>(32u)))) ^ ~select(vec4<u32>(0u, u_input.a, u_input.c, arg_0.x) & ~vec4<u32>(u_input.c, u_input.c, arg_0.x, 2121u), vec4<u32>(u_input.c & arg_0.x, 19314u & u_input.a, 1u, 4294967295u), !select(vec4<bool>(true, false, false, var_2), vec4<bool>(var_4.a.x, true, false, var_4.a.x), vec4<bool>(var_2, true, var_4.a.x, false)));
}

fn func_2(arg_0: vec3<f32>) -> StorageBuffer {
    var var_0 = ~_wgslsmith_add_vec4_u32(func_4(vec3<u32>(33902u, u_input.c << (4294967295u % 32u), ~71096u), ~_wgslsmith_dot_vec2_i32(vec2<i32>(62226i, 2147483647i), vec2<i32>(2147483647i, 273i)), _wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(-2147483647i, 1i, -1i, -1i), vec4<i32>(2147483647i, -23163i, -1i, 63660i)), vec2<i32>(-1i, 0i))), min(vec3<i32>(1i, 35171i, 60751i), min(vec3<i32>(0i, -39103i, -18330i), vec3<i32>(8338i, 1i, 1i)))), func_4(abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, 12678u), vec3<u32>(u_input.b.x, u_input.c, 0u))), _wgslsmith_div_i32(1i, 1i), _wgslsmith_f_op_f32(f32(-1f) * -1000f), ~(-vec3<i32>(-2147483647i, -3231i, 2147483647i))));
    global0 = array<Struct_2, 15>();
    var_0 = vec4<u32>(~52034u, var_0.x, ~var_0.x, _wgslsmith_sub_u32(0u | var_0.x, func_4(firstLeadingBit(vec3<u32>(u_input.a, var_0.x, 1u)), i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(trunc(1000f)), abs(vec3<i32>(-2147483647i, -10023i, -6262i))).x >> (30470u % 32u)));
    global0 = array<Struct_2, 15>();
    var var_1 = Struct_1(var_0.yyx, vec4<bool>(true, true & (u_input.a > (4294967295u & u_input.b.x)), any(vec2<bool>(true, select(false, false, true))), !(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, -35144i), vec3<i32>(0i, 0i, 1i)) == 0i)), arg_0.x, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, _wgslsmith_add_u32(~1u, select(var_0.x, 54455u, true))), vec2<u32>(_wgslsmith_mult_u32(~1u, 0u), func_1(~vec4<u32>(1u, 36247u, var_0.x, u_input.b.x), Struct_4(false, 0u), vec2<f32>(arg_0.x, arg_0.x), Struct_4(true, var_0.x)).x)));
    return StorageBuffer(-(~min(abs(vec2<i32>(12759i, -1i)), -vec2<i32>(16607i, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(abs(_wgslsmith_div_vec3_u32(~vec3<u32>(10589u, u_input.c, u_input.c), min(vec3<u32>(9187u, 0u, 1u), vec3<u32>(4294967295u, 1u, u_input.b.x)))) << (abs(vec3<u32>(40572u, u_input.c, ~4294967295u)) % vec3<u32>(32u)), !(!vec4<bool>(true, any(vec4<bool>(true, false, true, false)), false, true)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(237f, -1200f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1977f * 1126f) - 178f)), _wgslsmith_f_op_f32(ceil(1f)))), max(u_input.b >> (_wgslsmith_clamp_vec2_u32(~vec2<u32>(21727u, u_input.b.x), ~vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u)), ~(func_1(vec4<u32>(u_input.b.x, u_input.a, u_input.a, u_input.b.x), Struct_4(false, u_input.b.x), vec2<f32>(165f, 870f), Struct_4(true, 5240u)) ^ u_input.b)));
    global0 = array<Struct_2, 15>();
    var var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(i32(-1i) * -(~7749i), 1i, ~1i, ~(-min(2147483647i, 2147483647i))), -(~(~vec4<i32>(1i, 1i, 1i, 1i))));
    let var_2 = ~(~(~abs(vec4<u32>(23238u, u_input.a, 1u, var_0.d.x) & vec4<u32>(4294967295u, u_input.a, 1u, u_input.a))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(trunc(var_0.c))));
    var var_4 = -reverseBits(-(~(vec4<i32>(48234i, var_1.x, 2487i, var_1.x) >> (var_2 % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.c, -444f, 618f), vec3<f32>(248f, var_0.c, -406f)))))));
}

