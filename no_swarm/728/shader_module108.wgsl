struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: Struct_2,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: u32;

var<private> global2: i32;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(186f * _wgslsmith_f_op_f32(-501f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-136f + -1000f))))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-243f, -2275f) + -1915f));
    global1 = _wgslsmith_sub_u32(abs(~abs(4294967295u)), u_input.a.x);
    let var_1 = false;
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1864f, -727f), -202f, all(vec4<bool>(arg_0, var_1, false, arg_0)))) + 475f))));
    var var_2 = Struct_2(select(vec3<i32>(34608i, 2147483647i, global0.x) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, global0.x, global0.x), vec3<i32>(global0.x, 48331i, global0.x)), countOneBits(vec3<i32>(-26742i, 36831i, global0.x)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(33690u, u_input.a.x, 1u), u_input.b) % vec3<u32>(32u)), !any(vec4<bool>(arg_0, false, arg_0, true))) << (countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(42067u, 1u, u_input.a.x), vec3<u32>(u_input.b.x, 41747u, 1645u))) % vec3<u32>(32u)));
    return var_1;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(global0.x, u_input.b, ~(~(-min(vec4<i32>(global0.x, global0.x, global0.x, global0.x), vec4<i32>(20998i, -25663i, global0.x, 49252i)))), vec3<bool>(func_3(true), true, _wgslsmith_f_op_f32(-124f * -1000f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(281f, -200f, true)))));
    var var_1 = 1f;
    var var_2 = Struct_4(Struct_2(var_0.c.wyw));
    global0 = ~_wgslsmith_mult_vec3_i32(var_0.c.xxw, ~(~vec3<i32>(5502i, 0i, var_2.a.a.x)));
    var_0 = Struct_1(_wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, -42723i), min(global0.xy, vec2<i32>(var_2.a.a.x, var_0.c.x)))), vec2<i32>(var_0.a, _wgslsmith_mod_i32(abs(1i), -9674i))), countOneBits(abs(var_0.b)), vec4<i32>(global0.x, -15108i, _wgslsmith_dot_vec3_i32(vec3<i32>(10479i, var_0.a, countOneBits(global0.x)), var_0.c.xyz), 2147483647i | ~max(var_2.a.a.x, -73170i)), vec3<bool>(var_0.d.x, any(!(!vec4<bool>(true, false, var_0.d.x, false))), select(!(1u == u_input.b.x), any(var_0.d.zz), true)));
    return Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, 1i, _wgslsmith_sub_i32(var_2.a.a.x | var_2.a.a.x, global0.x & var_2.a.a.x)), countOneBits(-var_2.a.a) | reverseBits(vec3<i32>(var_2.a.a.x, var_2.a.a.x, -18972i) ^ var_2.a.a)));
}

fn func_1() -> i32 {
    let var_0 = u_input.a;
    let var_1 = func_2();
    var var_2 = var_1;
    let var_3 = -142f;
    global2 = 44283i;
    return -(_wgslsmith_div_i32(-select(var_1.a.x, -24608i, true), var_1.a.x) & (var_2.a.x ^ 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1(), u_input.b, _wgslsmith_add_vec4_i32(vec4<i32>(global0.x, -global0.x, 1i, func_2().a.x), vec4<i32>(firstLeadingBit(~(-2160i)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(-24120i, global0.x), -2147483647i), countOneBits(~global0.x), global0.x | global0.x)), vec3<bool>(true, true, true));
    var var_1 = var_0.b.x;
    var var_2 = Struct_3(var_0.d.x, var_0.c.zyz >> (((vec3<u32>(u_input.a.x, u_input.a.x, var_0.b.x) ^ var_0.b) ^ _wgslsmith_div_vec3_u32(abs(u_input.b), countOneBits(vec3<u32>(18276u, 1u, var_0.b.x)))) % vec3<u32>(32u)), func_2(), _wgslsmith_mult_u32(~1u, ~reverseBits(u_input.b.x & var_0.b.x)), (i32(-1i) * -23428i) >> (var_0.b.x % 32u));
    var var_3 = Struct_1(~var_0.c.x, var_0.b, countOneBits(countOneBits(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(var_2.c.a.x, 2147483647i, -53024i, -14898i)), _wgslsmith_mod_vec4_i32(var_0.c, vec4<i32>(-44984i, 17407i, -2147483647i, var_2.c.a.x))))), select(!(!var_0.d), var_0.d, select(select(vec3<bool>(var_0.d.x, true, var_2.a), select(vec3<bool>(false, var_2.a, var_2.a), var_0.d, var_0.d.x), var_0.d), vec3<bool>(var_2.a, all(vec2<bool>(var_2.a, true)), var_2.a), !(!var_0.d))));
    global0 = _wgslsmith_clamp_vec3_i32(-(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-9335i, 2147483647i, var_0.a, var_3.c.x), var_3.c), var_2.b.x | -32523i, -var_3.c.x) & -vec3<i32>(-65484i, global0.x, var_0.a)), reverseBits(~var_0.c.ywx << (u_input.b % vec3<u32>(32u))), ~(-max(var_3.c.wzy, var_2.c.a)));
    let var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(2301f, _wgslsmith_f_op_f32(938f - 1000f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1047f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(u_input.b.zx, ~u_input.a));
}

