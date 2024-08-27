struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, false, true), vec2<u32>(4294967295u, 1u), vec3<u32>(1u, 0u, 21828u));

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, true, true), vec2<u32>(40634u, 25172u), vec3<u32>(70878u, 43137u, 32584u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_2(-(~vec2<i32>(u_input.a, _wgslsmith_add_i32(u_input.a, -50557i))), Struct_1(arg_3.a, vec2<u32>(firstTrailingBit(~38884u), 77568u), vec3<u32>(abs(arg_2) ^ global1.c.x, 0u, firstTrailingBit(global1.b.x) ^ 34537u)), !(!(_wgslsmith_mult_i32(-2147483647i, u_input.a) == -41642i)), _wgslsmith_sub_vec3_u32(arg_3.c >> (~(~vec3<u32>(arg_3.b.x, 4294967295u, global0.b.x)) % vec3<u32>(32u)), abs(global1.c ^ vec3<u32>(arg_2, 61703u, 39834u)) << (~(~vec3<u32>(31946u, arg_3.c.x, 9106u)) % vec3<u32>(32u))));
    let var_1 = true;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), arg_1.x) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -235f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x))), -587f);
    var_0 = Struct_2(vec2<i32>(_wgslsmith_mult_i32(var_0.a.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, 39843i), vec3<i32>(1i, 11913i, -26694i))), i32(-1i) * -u_input.a), var_0.b, arg_3.a.x, global1.c);
    var var_3 = Struct_1(vec3<bool>(_wgslsmith_f_op_f32(var_2.x + 3309f) == -1448f, !((arg_2 ^ 4294967295u) >= 12393u), all(!select(vec4<bool>(var_0.c, arg_0.x, true, true), vec4<bool>(true, true, true, arg_3.a.x), vec4<bool>(arg_3.a.x, true, global0.a.x, var_1)))), _wgslsmith_clamp_vec2_u32(firstTrailingBit(firstLeadingBit(vec2<u32>(7928u, arg_2) & global0.b)), vec2<u32>(22501u, arg_2), global1.b), ~global1.c >> (vec3<u32>(min(60273u, arg_3.b.x), 39284u | reverseBits(var_0.b.c.x), ~(global0.c.x & 0u)) % vec3<u32>(32u)));
    return ~(~(min(global0.c.x, 9520u) << (abs(20116u) % 32u)) >> (15036u % 32u));
}

fn func_3() -> vec3<bool> {
    global0 = Struct_1(!(!select(vec3<bool>(true, global0.a.x, true), !vec3<bool>(global1.a.x, true, global1.a.x), false)), global0.c.zz, vec3<u32>(global1.b.x, global1.b.x, global0.b.x >> (global0.b.x % 32u)));
    var var_0 = Struct_2(~_wgslsmith_sub_vec2_i32(-vec2<i32>(57700i, u_input.a), firstLeadingBit(vec2<i32>(u_input.a, -7425i))) >> (global1.b % vec2<u32>(32u)), Struct_1(!global1.a, vec2<u32>(~(~4294967295u), global1.c.x), vec3<u32>(func_2(!vec3<bool>(false, global1.a.x, false), vec4<f32>(-1864f, 826f, -618f, -347f), ~4294967295u, Struct_1(vec3<bool>(false, true, true), global0.b, vec3<u32>(global1.c.x, 0u, global1.c.x))), 58315u, ~global0.c.x)), true, ~global1.c);
    let var_1 = Struct_2(abs(select(max(var_0.a, vec2<i32>(var_0.a.x, -2147483647i)), ~vec2<i32>(-24094i, u_input.a), global0.a.zx) & (var_0.a >> (select(vec2<u32>(global0.c.x, 1u), vec2<u32>(1u, 4294967295u), vec2<bool>(var_0.b.a.x, true)) % vec2<u32>(32u)))), Struct_1(!vec3<bool>(global1.a.x, 6709u <= var_0.d.x, true), ~vec2<u32>(global0.c.x | var_0.d.x, global1.c.x), ~(~global1.c << (vec3<u32>(17877u, 32620u, 0u) % vec3<u32>(32u)))), global1.a.x, countOneBits(_wgslsmith_sub_vec3_u32(min(vec3<u32>(global1.b.x, global0.b.x, 12307u), vec3<u32>(4294967295u, 0u, global0.c.x)) ^ _wgslsmith_add_vec3_u32(global1.c, vec3<u32>(33616u, 43613u, 0u)), vec3<u32>(~global1.b.x, _wgslsmith_div_u32(global0.c.x, global1.b.x), 36459u))));
    var var_2 = true;
    let var_3 = (~max(16912u, ~global0.b.x) & var_1.b.c.x) | var_0.b.b.x;
    return global0.a;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(vec3<bool>(true, !global1.a.x, global0.a.x), global0.c.zz, ~select(vec3<u32>(func_2(global0.a, vec4<f32>(-1217f, -594f, -1999f, -344f), 0u, arg_0), global1.c.x, global0.b.x), global1.c, vec3<bool>(all(vec4<bool>(false, arg_1, arg_0.a.x, global1.a.x)), global1.a.x, false)));
    global0 = arg_0;
    let var_1 = Struct_2(firstLeadingBit(arg_2.zz), arg_0, false, ~(vec3<u32>(51937u, _wgslsmith_mod_u32(global1.b.x, global0.b.x), 1u ^ global0.c.x) ^ _wgslsmith_clamp_vec3_u32(var_0.c, max(vec3<u32>(1867u, global0.b.x, global0.b.x), arg_0.c), ~global0.c)));
    var var_2 = Struct_1(!(!select(func_3(), vec3<bool>(arg_0.a.x, false, global0.a.x), var_1.b.a.x)), vec2<u32>(_wgslsmith_sub_u32(4294967295u >> (countOneBits(0u) % 32u), 30663u), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(global1.b.x, 28603u), abs(global1.c.x))), _wgslsmith_add_vec3_u32(vec3<u32>(min(4853u, ~73810u), ~1u, global0.b.x ^ (global0.b.x | var_0.c.x)), var_1.d));
    var var_3 = arg_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec2<i32>(0i, abs(i32(-1i) * -66518i)), Struct_1(global1.a, global1.c.zy, vec3<u32>(_wgslsmith_div_u32(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0.b.x, 1u), vec3<u32>(4294967295u, 0u, global1.c.x))), select(29874u, 13467u, true), min(firstTrailingBit(1u), 10120u))), !(~(~4294967295u) <= global1.c.x), abs(abs(vec3<u32>(global1.c.x, 1u, 0u) ^ vec3<u32>(0u, 76314u, global1.b.x)) ^ max(vec3<u32>(global1.b.x, 4294967295u, 25856u), ~vec3<u32>(global0.b.x, global0.c.x, 4294967295u))));
    global1 = var_0.b;
    var var_1 = var_0.b;
    let var_2 = var_0;
    global0 = func_1(var_2.b, true, vec3<i32>(_wgslsmith_clamp_i32(var_2.a.x, var_0.a.x, var_2.a.x), abs(var_2.a.x) | firstLeadingBit(-18786i), -(-20021i | var_2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(263f - -1051f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-401f, -810f, var_1.a.x)) + _wgslsmith_div_f32(1232f, -963f)) - 1000f)), countOneBits(reverseBits(vec3<i32>(2147483647i, var_0.a.x, var_2.a.x)) >> (~func_1(Struct_1(global1.a, var_2.d.xy, var_2.b.c), var_1.a.x, vec3<i32>(var_2.a.x, var_0.a.x, -37071i)).c % vec3<u32>(32u))), ~(~(~vec4<u32>(var_1.b.x, var_0.d.x, 1u, 1u))) & abs(vec4<u32>(var_2.b.c.x, ~1u, global0.c.x >> (var_0.d.x % 32u), 53315u)));
}

