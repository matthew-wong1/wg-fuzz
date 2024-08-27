struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_3;

var<private> global2: Struct_1;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    let var_0 = abs(~(global1.a.b << (global2.b % vec3<u32>(32u))));
    global2 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2871f)))), global2.b, !(!any(!vec2<bool>(global1.c.x, global1.a.d.x))), !(!select(vec2<bool>(true, true), global1.c.xz, global2.d.x)));
    var var_1 = vec4<bool>(false, all(global1.d), global2.c, false);
    let var_2 = global1.a;
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-var_2.a), ~max(_wgslsmith_div_vec3_u32(var_0, global2.b), _wgslsmith_clamp_vec3_u32(var_2.b, vec3<u32>(var_2.b.x, var_0.x, 0u), var_2.b)), !var_2.d.x | false, vec2<bool>(true, select(u_input.b.x != u_input.c, var_1.x, var_2.c))), (~(~global2.b.x) >> (global1.a.b.x % 32u)) >= ~_wgslsmith_clamp_u32(abs(4294967295u), var_0.x ^ 0u, 31462u ^ global2.b.x), select(vec3<bool>(global2.c, var_1.x, var_1.x), var_1.zzz, select(true, global1.b, any(vec4<bool>(global1.c.x, var_2.d.x, var_2.d.x, false)))), global1.d);
    return var_1.x;
}

fn func_2() -> Struct_3 {
    return Struct_3(global1.a, !global2.c, vec3<bool>(func_3(), all(global1.d), !func_3()), global1.d);
}

fn func_1() -> i32 {
    global0 = 1110f;
    var var_0 = func_2();
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global2.a, global1.a.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(398f, global2.a)), var_0.a.a))))))));
    global0 = global1.a.a;
    let var_1 = true;
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(countOneBits(_wgslsmith_sub_i32(u_input.c, u_input.b.x)), func_1(), 13041i, -2147483647i);
    var var_1 = global1.a;
    let var_2 = vec3<i32>(-1i, -var_0.x, u_input.c);
    let var_3 = _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_div_i32(var_2.x, var_0.x) | var_0.x), u_input.a.wy), vec2<i32>(~24030i >> (~(var_1.b.x >> (73344u % 32u)) % 32u), 28383i));
    global0 = global2.a;
    var var_4 = global2.b;
    var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(-firstLeadingBit(35572i), countOneBits(u_input.c) << (var_4.x % 32u), 1i, var_3.x)), _wgslsmith_mult_vec4_i32(-(~_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(1i, u_input.c, -11146i, var_0.x))), min(~abs(u_input.a), vec4<i32>(_wgslsmith_div_i32(0i, u_input.a.x), _wgslsmith_mod_i32(u_input.b.x, -20505i), -var_3.x, firstTrailingBit(30912i)))));
    var var_5 = _wgslsmith_clamp_i32(1i, var_0.x, abs(abs(u_input.c)));
    var_5 = ~_wgslsmith_clamp_i32(u_input.c, ~(-firstTrailingBit(0i)), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(419f, 138f, _wgslsmith_mult_i32(var_0.x, 0i) < var_3.x)) * global2.a), countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.b.x, ~26355u, 33562u | var_1.b.x, var_1.b.x), ~vec4<u32>(4294967295u, 4294967295u, 1u, 33189u))), _wgslsmith_f_op_f32(max(global1.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-137f - _wgslsmith_div_f32(global2.a, 249f)) + _wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(var_4.x, global2.b.x, 53260u, 85195u)), select(vec4<u32>(21028u, var_1.b.x, global2.b.x, 4294967295u), ~vec4<u32>(global1.a.b.x, 0u, global1.a.b.x, 4294967295u), false)), _wgslsmith_mod_u32(~0u, var_4.x)), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.a))), 572f, _wgslsmith_f_op_f32(abs(1188f)), global1.a.a));
}

