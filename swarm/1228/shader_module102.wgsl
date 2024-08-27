struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20> = array<f32, 20>(-593f, 1416f, -2122f, 479f, -270f, -275f, -307f, 487f, -739f, -291f, 777f, -1365f, 501f, -551f, 680f, -756f, 1000f, 1043f, -1960f, -121f);

var<private> global1: vec4<f32> = vec4<f32>(-282f, -991f, 381f, -1590f);

var<private> global2: bool = false;

var<private> global3: vec3<bool> = vec3<bool>(false, true, false);

var<private> global4: vec3<u32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> vec3<u32> {
    global0 = array<f32, 20>();
    var var_0 = abs(-28514i);
    var var_1 = global4.x & (~(~u_input.c) >> (1u % 32u));
    var var_2 = Struct_1(~global4.x, all(vec4<bool>(true, any(!arg_0.zyx), all(!vec4<bool>(arg_0.x, true, global3.x, global3.x)), !global3.x)), firstTrailingBit(min(0u & ~global4.x, ~firstLeadingBit(13770u))), select(!select(select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(false, true, global3.x), vec3<bool>(global3.x, arg_0.x, true)), arg_0.wyw, select(global3.x, global3.x, false)), arg_0.zzy, global3.x));
    var_0 = 1i;
    return countOneBits(vec3<u32>(61945u, _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, global4.x), firstLeadingBit(49834u)), u_input.b), (~u_input.b | (4294967295u | u_input.d)) << (firstTrailingBit(~4294967295u) % 32u)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(global4.x, global3.x, countOneBits(~(~(~global4.x))), !vec3<bool>(_wgslsmith_f_op_f32(min(global1.x, 424f)) == -1297f, global3.x, all(select(vec3<bool>(true, true, global3.x), vec3<bool>(global3.x, true, global3.x), true))));
    let var_1 = !vec3<bool>(!(~0u >= var_0.c), true, false);
    let var_2 = Struct_1(1u, true, 1u, var_1);
    var var_3 = ~_wgslsmith_sub_vec3_i32(firstLeadingBit(_wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.e, 12759i, u_input.e)), ~vec3<i32>(2147483647i, u_input.e, u_input.e))), vec3<i32>(55726i, _wgslsmith_add_i32(-23816i, u_input.a) ^ (1i ^ u_input.a), 0i));
    global4 = ~select(abs(firstLeadingBit(func_3(vec4<bool>(var_2.b, true, false, true)))), vec3<u32>(~firstLeadingBit(global4.x), 0u, ~69321u), vec3<bool>(all(select(vec4<bool>(false, false, false, var_1.x), vec4<bool>(true, global3.x, true, var_1.x), var_2.b)), (u_input.e ^ 27205i) < -1i, true));
    return var_2;
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = Struct_1(u_input.c & abs(var_0.c), var_0.d.x, firstLeadingBit(arg_0), !var_0.d);
    let var_2 = Struct_1(var_1.a, true, ~0u, func_2().d);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.zyx));
    let var_4 = Struct_1(_wgslsmith_div_u32(~(~arg_0), ~min(var_1.c, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c, var_2.c), global4.yz))), any(vec2<bool>(true, !var_1.d.x)), ~(~firstTrailingBit(~var_2.c)), !select(!vec3<bool>(global3.x, true, true), var_2.d, select(func_2().d, var_0.d, arg_1 & var_0.d.x)));
    return Struct_1(var_0.c, false, 48333u, var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1085f - global0[_wgslsmith_index_u32(global4.x, 20u)])), ~(-13848i) != ~u_input.a)), 423f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), global0[_wgslsmith_index_u32(4294967295u, 20u)])));
    let var_1 = global3.zx;
    let var_2 = func_1(u_input.c, global3.x);
    var var_3 = Struct_1(global4.x, func_1(0u, all(!global3.zx)).b, ~(~_wgslsmith_div_u32(~global4.x, ~4294967295u)), !vec3<bool>(false, func_2().d.x, all(select(vec4<bool>(var_2.d.x, true, var_1.x, var_2.b), vec4<bool>(false, global3.x, var_2.d.x, false), var_2.b))));
    global2 = true;
    global4 = vec3<u32>(_wgslsmith_sub_u32(~(var_3.c >> (global4.x % 32u)), var_3.a), firstLeadingBit(~4371u), _wgslsmith_add_u32(func_1(69273u, true).a, u_input.b)) | (vec3<u32>(~45078u | func_1(45176u, true).c, var_2.a, var_3.c) ^ min(select(_wgslsmith_mod_vec3_u32(vec3<u32>(global4.x, var_2.c, var_2.c), vec3<u32>(1u, u_input.b, var_3.c)), ~vec3<u32>(u_input.c, 0u, var_2.a), func_1(var_3.a, global3.x).d), vec3<u32>(0u, _wgslsmith_div_u32(1u, 81406u), var_3.c)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.a, _wgslsmith_mod_i32(~u_input.e, i32(-1i) * -2147483647i)), _wgslsmith_add_vec2_i32(vec2<i32>(firstTrailingBit(reverseBits(-1i)), u_input.e), countOneBits(vec2<i32>(abs(u_input.e), u_input.a))), vec3<i32>(select(select(u_input.a, ~u_input.e, var_0.x != 870f), -12605i, any(select(vec4<bool>(true, true, global3.x, true), vec4<bool>(var_3.d.x, var_2.d.x, false, false), vec4<bool>(var_3.d.x, var_1.x, global3.x, global3.x)))), 51528i, ~firstLeadingBit(countOneBits(1i))));
}

