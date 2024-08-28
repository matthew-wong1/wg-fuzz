struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<bool>(false, true), vec2<u32>(1u, 46723u)), vec4<i32>(-11203i, -1i, 0i, 9889i));

var<private> global1: bool;

var<private> global2: i32;

var<private> global3: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<u32> {
    let var_0 = _wgslsmith_mult_vec3_i32(~vec3<i32>(i32(-1i) * -u_input.a.x, _wgslsmith_dot_vec2_i32(abs(global3.b.xz), _wgslsmith_div_vec2_i32(vec2<i32>(global3.b.x, global3.b.x), global0.b.wz)), _wgslsmith_mult_i32(1i << (0u % 32u), ~(-27759i))), vec3<i32>(7602i, global0.b.x, 2147483647i));
    var var_1 = !global3.a.a;
    global2 = abs(var_0.x);
    let var_2 = 20451u;
    var var_3 = Struct_4(select(!select(!vec3<bool>(false, var_1.x, false), select(vec3<bool>(var_1.x, false, global0.a.a.x), vec3<bool>(global3.a.a.x, true, global3.a.a.x), var_1.x), vec3<bool>(global0.a.a.x, global3.a.a.x, false)), !vec3<bool>(true, global3.a.a.x, true), !select(vec3<bool>(global0.a.a.x, false, false), select(vec3<bool>(true, global3.a.a.x, var_1.x), vec3<bool>(global0.a.a.x, var_1.x, true), vec3<bool>(global3.a.a.x, global0.a.a.x, var_1.x)), true)));
    return countOneBits(~(~countOneBits(firstTrailingBit(global3.a.b))));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(global0.a, global3.b);
    global0 = Struct_2(Struct_1(global3.a.a, ~(func_3() ^ global3.a.b)), abs(vec4<i32>(~global3.b.x, 2147483647i, u_input.a.x, firstLeadingBit(u_input.a.x)) ^ global3.b));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-821f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-513f - -543f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-681f, -1167f)))), -260f);
    let var_2 = Struct_4(!(!select(!vec3<bool>(global3.a.a.x, global0.a.a.x, true), !vec3<bool>(true, global0.a.a.x, true), !global0.a.a.x)));
    global3 = Struct_2(Struct_1(!(!select(global0.a.a, vec2<bool>(true, true), var_2.a.x)), global3.a.b), _wgslsmith_clamp_vec4_i32(abs(global0.b), abs(~abs(vec4<i32>(u_input.a.x, -41233i, 22391i, 2147483647i))), var_0.b));
    return Struct_3(var_0.a, vec3<i32>(var_0.b.x, 1i ^ countOneBits(global0.b.x), global3.b.x) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(~var_0.a.b.x, var_0.a.b.x, _wgslsmith_add_u32(4294967295u, u_input.b)), countOneBits(vec3<u32>(35752u, global3.a.b.x, u_input.b)) & vec3<u32>(1u, global0.a.b.x, var_0.a.b.x)) % vec3<u32>(32u)), global0.a.b.x, var_1.xzx);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_3) -> Struct_1 {
    global3 = Struct_2(global0.a, firstTrailingBit(global3.b));
    let var_0 = any(select(!select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(global3.a.a.x, arg_1.a.x, false), global0.a.a.x), arg_0.a.a.x != true), select(vec3<bool>(true, true, true), vec3<bool>(global0.a.a.x, false, global0.a.a.x), any(vec2<bool>(arg_0.a.a.x, arg_3.a.a.x))), !global3.a.a.x));
    global1 = arg_0.a.a.x;
    let var_1 = Struct_2(Struct_1(select(select(vec2<bool>(arg_1.a.x, global0.a.a.x), !global0.a.a, false), !func_2().a.a, !vec2<bool>(true, arg_1.a.x)), vec2<u32>(~(~global3.a.b.x), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(36793u, 0u), vec2<u32>(12173u, arg_0.a.b.x)), firstLeadingBit(vec2<u32>(arg_1.b.x, arg_1.b.x))))), _wgslsmith_mult_vec4_i32(vec4<i32>(68912i & firstTrailingBit(global0.b.x), global0.b.x, select(i32(-1i) * -1i, global0.b.x, any(vec4<bool>(true, arg_3.a.a.x, false, true))), -319i), global0.b));
    global3 = Struct_2(global3.a, global3.b);
    return Struct_1(!select(select(!global3.a.a, select(arg_3.a.a, arg_0.a.a, arg_3.a.a.x), 0u > global3.a.b.x), arg_1.a, func_2().a.a), _wgslsmith_mult_vec2_u32(vec2<u32>(min(4294967295u, 38275u), arg_0.a.b.x), ~abs(func_2().a.b)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_4) -> Struct_1 {
    global2 = ~8121i;
    var var_0 = _wgslsmith_div_vec4_i32(-vec4<i32>(~0i, countOneBits(-18090i), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-22526i, global0.b.x), reverseBits(global3.b.x), _wgslsmith_clamp_i32(u_input.a.x, global0.b.x, -2147483647i)), max(u_input.a.x, u_input.a.x) >> (min(global0.a.b.x, 0u) % 32u)), global3.b);
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(global3.b.x, var_0.x, ~_wgslsmith_mult_i32(~18636i, ~global0.b.x)), global3.b.xyx);
    global1 = u_input.a.x < func_2().b.x;
    let var_2 = -639f;
    return arg_0;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: vec2<i32>) -> u32 {
    let var_0 = func_5(func_4(func_2(), Struct_1(vec2<bool>(true, all(vec3<bool>(arg_1, global3.a.a.x, true))), arg_0.yy), ~_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(-18103i, global0.b.x, global0.b.x, arg_2.x)), vec4<i32>(0i, u_input.a.x, -22553i, global3.b.x)), func_2()), func_4(func_2(), func_4(func_2(), func_2().a, vec4<i32>(global3.b.x, u_input.a.x, arg_2.x, global3.b.x) & abs(vec4<i32>(global3.b.x, global0.b.x, -2147483647i, 0i)), func_2()), abs(abs(vec4<i32>(-10011i, -1i, u_input.a.x, u_input.a.x))), Struct_3(global0.a, vec3<i32>(-2147483647i, i32(-1i) * -2147483647i, -72013i), abs(_wgslsmith_div_u32(u_input.b, 1u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1409f, -687f, -1065f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(220f, -564f, -1156f))))), global3.a.a.x, Struct_4(!(!vec3<bool>(false, true, global3.a.a.x))));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(35586u, func_1(abs(vec3<u32>(4294967295u >> (global3.a.b.x % 32u), ~38568u, _wgslsmith_dot_vec3_u32(vec3<u32>(45252u, global3.a.b.x, global0.a.b.x), vec3<u32>(1u, 4294967295u, global3.a.b.x)))), all(select(!vec3<bool>(global3.a.a.x, global0.a.a.x, global0.a.a.x), select(vec3<bool>(global3.a.a.x, global3.a.a.x, global3.a.a.x), vec3<bool>(global0.a.a.x, false, true), global0.a.a.x), false)), global0.b.yw));
    var var_1 = vec4<bool>(func_2().a.a.x, true, any(vec3<bool>(true, global3.a.a.x, true)), func_4(Struct_3(Struct_1(global3.a.a, vec2<u32>(global3.a.b.x, 23197u)), _wgslsmith_add_vec3_i32(-global3.b.yxy, global0.b.xxz), abs(global0.a.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(1332f, -161f, -916f) - vec3<f32>(415f, 574f, 2394f))), func_2().a, global3.b, func_2()).a.x);
    let var_2 = func_2();
    global2 = ~global0.b.x ^ -countOneBits(~(-10176i));
    var var_3 = 0u;
    var var_4 = vec2<i32>(max(_wgslsmith_clamp_i32(~(-u_input.a.x), _wgslsmith_sub_i32(global0.b.x, _wgslsmith_mod_i32(-9451i, u_input.a.x)), -7979i), select(global0.b.x, u_input.a.x, global3.a.a.x)), global0.b.x);
    global2 = i32(-1i) * -_wgslsmith_dot_vec2_i32(global0.b.xx, firstTrailingBit(vec2<i32>(u_input.a.x, var_2.b.x)) ^ global0.b.wy);
    var_1 = vec4<bool>(global0.a.a.x, any(var_1.yyz), var_1.x, (max(_wgslsmith_sub_i32(u_input.a.x, -6386i), global0.b.x) >> (_wgslsmith_mod_u32(func_2().c, _wgslsmith_div_u32(var_2.c, u_input.b)) % 32u)) < 1i);
    let x = u_input.a;
    s_output = StorageBuffer(~(~global3.a.b), _wgslsmith_dot_vec3_u32(~(~_wgslsmith_div_vec3_u32(vec3<u32>(42026u, 0u, 15718u), vec3<u32>(global0.a.b.x, 1u, 11529u))), vec3<u32>(1u, ~(~6745u), 101530u)), -global0.b);
}

