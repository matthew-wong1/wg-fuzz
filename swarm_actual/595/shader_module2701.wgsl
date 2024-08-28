struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0i, vec4<bool>(false, true, false, true), false);

var<private> global1: Struct_3 = Struct_3(vec4<u32>(39561u, 38309u, 4294967295u, 53088u), 1000f);

var<private> global2: i32 = 0i;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: f32) -> bool {
    global0 = Struct_1(-1i, global0.b, false & !(!arg_1.b.x));
    global0 = Struct_1(_wgslsmith_dot_vec3_i32(-firstLeadingBit(vec3<i32>(u_input.a.x, global0.a, arg_0.a)), _wgslsmith_mult_vec3_i32(~vec3<i32>(global0.a, u_input.b, -2147483647i), vec3<i32>(i32(-1i) * -32678i, ~(-2147483647i), _wgslsmith_mult_i32(u_input.a.x, u_input.b)))), select(!select(global0.b, select(arg_0.b, global0.b, global0.b), select(arg_0.b, global0.b, arg_0.c)), vec4<bool>(true, all(select(arg_0.b, arg_0.b, vec4<bool>(true, global0.c, arg_1.b.x, arg_0.c))), true, arg_1.b.x), true), any(select(!arg_1.b.yz, !vec2<bool>(true, arg_1.b.x), !(36931i >= arg_0.a))));
    global0 = arg_0;
    var var_0 = abs(arg_1.a) << (countOneBits(~(arg_1.a | max(vec4<u32>(arg_1.a.x, 4294967295u, arg_1.a.x, global1.a.x), arg_1.a))) % vec4<u32>(32u));
    let var_1 = u_input.a;
    return true;
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<u32>, arg_3: u32) -> vec3<u32> {
    let var_0 = Struct_1(-arg_1, select(!global0.b, vec4<bool>(select(-1i, arg_1, false) <= ~u_input.b, 969f > _wgslsmith_f_op_f32(-global1.b), !(!global0.c), _wgslsmith_f_op_f32(select(global1.b, global1.b, global0.c)) < -717f), (global0.c | true) && false), !any(!(!global0.b)));
    let var_1 = Struct_1(var_0.a, !(!vec4<bool>(func_3(var_0, Struct_2(global1.a, var_0.b.zxx, -1546f), global0.b.zzy, 1000f), !global0.b.x, false, func_3(var_0, Struct_2(global1.a, vec3<bool>(true, false, false), global1.b), var_0.b.xyw, -729f))), any(vec4<bool>(false, select(var_0.c, any(global0.b), false), var_0.b.x, any(vec3<bool>(var_0.c, false, false)))));
    var var_2 = var_1.b.x;
    var var_3 = select(vec2<bool>(global0.c, true), var_0.b.wz, false);
    var_3 = !vec2<bool>(all(!vec4<bool>(false, var_3.x, true, var_3.x)), all(select(select(vec3<bool>(true, var_1.c, var_3.x), vec3<bool>(var_0.c, global0.b.x, false), var_0.b.wyy), vec3<bool>(var_3.x, true, false), 82783u > global1.a.x)));
    return vec3<u32>(27312u, arg_2.x, max(global1.a.x, 1u)) | ~global1.a.wzw;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(963f + arg_2);
    global1 = Struct_3(vec4<u32>(firstLeadingBit(_wgslsmith_sub_u32(67567u, arg_0.x) | _wgslsmith_dot_vec3_u32(arg_0, arg_0)), global1.a.x, _wgslsmith_dot_vec3_u32(arg_0, func_2(vec3<u32>(arg_0.x, 4294967295u, arg_0.x), global0.a, abs(vec2<u32>(global1.a.x, global1.a.x)), ~3840u)), 72245u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.b)) + _wgslsmith_f_op_f32(floor(517f))))), arg_2));
    let var_1 = (_wgslsmith_sub_vec3_i32(firstLeadingBit(~vec3<i32>(arg_1.a, arg_1.a, -1i)), _wgslsmith_mod_vec3_i32(~vec3<i32>(2147483647i, 82623i, u_input.a.x), vec3<i32>(arg_1.a, -37720i, arg_1.a))) << (vec3<u32>(~_wgslsmith_mod_u32(1u, 62231u), arg_0.x, global1.a.x) % vec3<u32>(32u))) >> (abs(abs(firstTrailingBit(global1.a.wyz) << (_wgslsmith_div_vec3_u32(arg_0, arg_0) % vec3<u32>(32u)))) % vec3<u32>(32u));
    var var_2 = Struct_2(_wgslsmith_sub_vec4_u32(global1.a, global1.a), !(!(!(!global0.b.yzw))), _wgslsmith_f_op_f32(trunc(474f)));
    var var_3 = !any(!select(select(global0.b, vec4<bool>(false, true, false, false), false), vec4<bool>(arg_1.b.x, false, true, arg_1.b.x), vec4<bool>(true, var_2.b.x, false, global0.b.x)));
    return 50729u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(max(vec4<u32>(~abs(global1.a.x), _wgslsmith_dot_vec2_u32(countOneBits(global1.a.zy), ~vec2<u32>(49516u, 7156u)), min(105u, global1.a.x), countOneBits(4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(func_1(global1.a.xxw, Struct_1(23653i, vec4<bool>(true, global0.c, global0.b.x, false), global0.b.x), global1.b), global1.a.x ^ global1.a.x, 18730u, global1.a.x), global1.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) + -1000f), global1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-491f, 985f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(358f)))))));
    let var_0 = Struct_1(-u_input.a.x & ~(-1i), select(!select(!vec4<bool>(true, global0.c, global0.b.x, false), vec4<bool>(true, true, true, true), !global0.b), select(vec4<bool>(global0.c, global0.b.x, !global0.b.x, !global0.b.x), select(select(global0.b, global0.b, vec4<bool>(false, global0.b.x, false, global0.c)), select(vec4<bool>(global0.b.x, true, global0.b.x, false), vec4<bool>(false, false, true, true), global0.b), false), global0.b), global0.c), all(!vec2<bool>(!global0.c, global0.c)));
    global1 = Struct_3(firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(39742u, 9855u), min(global1.a.x, global1.a.x), firstTrailingBit(global1.a.x), 1u) & abs(global1.a)), _wgslsmith_f_op_f32(min(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b * global1.b), 1171f)))));
    let var_1 = var_0.b.xzw;
    var var_2 = vec3<i32>(_wgslsmith_add_i32(abs(-41297i) << (min(global1.a.x, global1.a.x) % 32u), _wgslsmith_mult_i32(_wgslsmith_sub_i32(global0.a, ~(-11299i)), _wgslsmith_mult_i32(18553i, -21328i << (global1.a.x % 32u)))), 0i, _wgslsmith_sub_i32(1i, 0i));
    var var_3 = var_2.zx;
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(~vec3<u32>(76427u, 2308u, 4294967295u)) & vec3<u32>(0u, global1.a.x, 0u ^ select(42688u, global1.a.x, false)));
}

