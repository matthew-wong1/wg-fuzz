struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global2: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: u32, arg_3: bool) -> vec3<u32> {
    return vec3<u32>(reverseBits(13776u), ~(~78249u), u_input.a | 113659u);
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: f32) -> Struct_2 {
    let var_0 = ~u_input.b;
    global2 = arg_0;
    global2 = select(~64274u, arg_0, true) & u_input.a;
    let var_1 = ~arg_1;
    return Struct_2(~(~min(4294967295u >> (1u % 32u), _wgslsmith_add_u32(u_input.a, u_input.a))), _wgslsmith_mod_vec3_u32(func_3(arg_2.zww, true, 50117u, true), countOneBits(vec3<u32>(u_input.a, arg_0, u_input.a)) & abs(vec3<u32>(0u, 4294967295u, 0u))) ^ ~abs(~vec3<u32>(70242u, 985u, u_input.a)), vec3<u32>((func_3(vec3<i32>(var_1.x, var_0, var_0), global1.x, u_input.a, global1.x).x >> (u_input.a % 32u)) & abs(1u), arg_0, 0u), ~vec4<u32>(arg_0, ~17790u, 1u >> (1u % 32u), u_input.a) & firstLeadingBit(~vec4<u32>(arg_0, 49887u, 20019u, u_input.a)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(121f)), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(0u, 16u)])))), arg_3, _wgslsmith_div_vec3_i32(vec3<i32>(arg_1.x, arg_2.x, var_0 & -39354i), arg_2.zxz)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = func_2(u_input.a, arg_0.e.c.xy, vec4<i32>(_wgslsmith_div_i32(arg_2.c.x, arg_0.e.c.x) & 0i, _wgslsmith_dot_vec2_i32(-select(vec2<i32>(21610i, u_input.b), arg_1.c.yy, false), ~vec2<i32>(arg_1.c.x, -15427i)), 2147483647i, min(2147483647i, _wgslsmith_add_i32(abs(arg_0.e.c.x), -arg_2.c.x))), arg_0.e.a.x);
    var var_1 = func_2(arg_0.a, ~_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(-arg_2.c.yx, select(vec2<i32>(arg_2.c.x, 49877i), var_0.e.c.zy, global1.yx)), arg_2.c.xx), ~(~firstTrailingBit(firstTrailingBit(vec4<i32>(-1i, arg_1.c.x, 1i, u_input.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.e.b)))) * _wgslsmith_f_op_f32(f32(-1f) * -698f))).e;
    global0 = array<f32, 16>();
    var var_2 = func_2(abs(84588u), vec2<i32>(-(~arg_2.c.x), var_0.e.c.x), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(-abs(vec4<i32>(-1i, 1i, 37764i, var_0.e.c.x)), ~min(vec4<i32>(arg_1.c.x, 2147483647i, var_1.c.x, -1i), vec4<i32>(29107i, 14063i, -25551i, arg_0.e.c.x))), firstLeadingBit(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(-11188i, var_1.c.x, arg_0.e.c.x, var_1.c.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.c.x, 0i, var_1.c.x, 2147483647i), vec4<i32>(-16998i, arg_1.c.x, var_0.e.c.x, arg_0.e.c.x))))), arg_1.b);
    let var_3 = arg_0.e.c.x;
    return vec4<u32>(_wgslsmith_div_u32(~reverseBits(26746u), 4294967295u), 1u, ~(~abs(arg_0.c.x)), ~(~min(arg_0.d.x, u_input.a)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(min(arg_1.e.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b * arg_2.a.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -147f)))));
    let var_1 = vec2<u32>(15572u, _wgslsmith_sub_u32(1u | (arg_0.x ^ arg_1.c.x), 2655u)) ^ _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(1u, ~arg_1.d.x)), ~arg_0.xw, vec2<u32>(~81567u, ~arg_1.a));
    global2 = ~var_1.x;
    var var_2 = min(var_1, ~vec2<u32>(abs(~0u), arg_1.a >> (var_1.x % 32u)));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1676f + var_0), _wgslsmith_div_f32(arg_1.e.b, arg_1.e.b)))))), 418f);
    return vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(10330u, _wgslsmith_div_u32(4294967295u << (var_1.x % 32u), ~var_2.x)), 54378u), 22443u);
}

fn func_5(arg_0: vec2<u32>) -> f32 {
    var var_0 = all(global1.yzw);
    let var_1 = func_2(~arg_0.x, vec2<i32>(0i, 43846i), (abs(~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)) & ~vec4<i32>(u_input.b, -34917i, u_input.b, u_input.b)) << (_wgslsmith_div_vec4_u32(~vec4<u32>(39990u, u_input.a, 1u, u_input.a) & firstTrailingBit(vec4<u32>(u_input.a, arg_0.x, 0u, u_input.a)), ~vec4<u32>(56468u, arg_0.x, 0u, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(256f)))).e;
    global1 = vec4<bool>(global1.x, true, !(global1.x & ((false && global1.x) & true)), reverseBits(_wgslsmith_mod_i32(~var_1.c.x, reverseBits(-29755i))) < u_input.b);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(-var_1.a.x)));
    var var_3 = vec3<i32>(abs(~var_1.c.x), reverseBits(var_1.c.x), -39789i);
    return 143f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_5(func_4(~(abs(vec4<u32>(u_input.a, 0u, u_input.a, 27791u)) ^ vec4<u32>(u_input.a, 62354u, u_input.a, u_input.a)), Struct_2(~abs(u_input.a), countOneBits(~vec3<u32>(u_input.a, 0u, 54505u)), vec3<u32>(1u, u_input.a, ~u_input.a), ~func_1(Struct_2(1u, vec3<u32>(u_input.a, 0u, 42657u), vec3<u32>(u_input.a, 23468u, 8023u), vec4<u32>(u_input.a, 27842u, u_input.a, 1u), Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 16u)], -761f), global0[_wgslsmith_index_u32(u_input.a, 16u)], vec3<i32>(-33987i, -596i, -2147483647i))), Struct_1(vec2<f32>(-507f, -239f), global0[_wgslsmith_index_u32(4294967295u, 16u)], vec3<i32>(u_input.b, -1i, u_input.b)), Struct_1(vec2<f32>(117f, global0[_wgslsmith_index_u32(4294967295u, 16u)]), -445f, vec3<i32>(0i, u_input.b, u_input.b))), Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 16u)], global0[_wgslsmith_index_u32(0u, 16u)]), _wgslsmith_f_op_f32(floor(1382f)), ~vec3<i32>(-1i, u_input.b, 1i))), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(479f, 445f))), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(1u ^ u_input.a, 16u)])), vec3<i32>(-14452i ^ u_input.b, abs(u_input.b), u_input.b & u_input.b)))));
    global0 = array<f32, 16>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2007f, 1218f) - vec2<f32>(1230f, -207f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, global0[_wgslsmith_index_u32(u_input.a, 16u)]), vec2<f32>(var_0, global0[_wgslsmith_index_u32(80060u, 16u)]), vec2<bool>(false, global1.x))))))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~18994u, 16u)]), _wgslsmith_mult_vec3_i32(~_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, -1i, u_input.b)), vec3<i32>(_wgslsmith_div_i32(u_input.b, 1i) | 22812i, 13958i, ~(-2147483647i) ^ (u_input.b << (u_input.a % 32u)))));
    let var_2 = func_2(1u | ~u_input.a, select(_wgslsmith_div_vec2_i32(abs(vec2<i32>(-17744i, var_1.c.x)), ~vec2<i32>(1i, 1i)), vec2<i32>(var_1.c.x, ~(-18598i)), vec2<bool>(!(-35047i > var_1.c.x), !all(vec2<bool>(false, true)))), firstTrailingBit(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.b, u_input.b, u_input.b) & vec4<i32>(u_input.b, var_1.c.x, var_1.c.x, u_input.b), vec4<i32>(9838i, u_input.b, var_1.c.x, -14102i), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -8425i, u_input.b, var_1.c.x), vec4<i32>(-1i, -13034i, 13264i, 2147483647i))), -vec4<i32>(var_1.c.x, 8680i, -1i, u_input.b))), _wgslsmith_f_op_f32(378f + var_0)).e;
    let var_3 = ~abs(reverseBits(abs(func_4(vec4<u32>(u_input.a, 4294967295u, u_input.a, 63644u), Struct_2(1u, vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(887u, 81327u, u_input.a), vec4<u32>(u_input.a, 0u, 3936u, u_input.a), var_1), Struct_1(var_1.a, -752f, vec3<i32>(var_2.c.x, var_1.c.x, -2147483647i))))));
    let var_4 = Struct_2(~(var_3.x & u_input.a), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(1u, 1u, 1u)), vec3<u32>(_wgslsmith_mod_u32(u_input.a, var_3.x), 1u, _wgslsmith_div_u32(var_3.x, u_input.a))), vec3<u32>(u_input.a, _wgslsmith_mult_u32(4294967295u, 4294967295u << (u_input.a % 32u)), 21138u)), ~vec3<u32>(~(~var_3.x), _wgslsmith_add_u32(select(4294967295u, 0u, global1.x), _wgslsmith_clamp_u32(var_3.x, u_input.a, 0u)), ~(~67279u)), vec4<u32>(_wgslsmith_div_u32(61204u, u_input.a), ~0u, _wgslsmith_add_u32(var_3.x, u_input.a), reverseBits(_wgslsmith_clamp_u32(~0u, _wgslsmith_add_u32(44132u, u_input.a), 9371u))), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1991f, global0[_wgslsmith_index_u32(var_4.a, 16u)], var_1.b)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-570f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-668f, var_1.b, true)) - _wgslsmith_f_op_f32(905f + var_0)), var_2.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.b, 1117f, 321f))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-538f)) - _wgslsmith_div_f32(852f, 460f))), 495f));
}

