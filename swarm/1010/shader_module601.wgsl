struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<u32>(1u, 1u, 1u), 15541i), Struct_1(vec3<u32>(2357u, 4294967295u, 36329u), 32112i), Struct_1(vec3<u32>(4294967295u, 72582u, 4294967295u), -36039i), Struct_1(vec3<u32>(0u, 13943u, 14799u), 22190i), Struct_1(vec3<u32>(1u, 1u, 10050u), 10130i), Struct_1(vec3<u32>(25811u, 4294967295u, 1u), 20735i), Struct_1(vec3<u32>(0u, 7637u, 23312u), -18861i), Struct_1(vec3<u32>(9655u, 1u, 41481u), -15844i), Struct_1(vec3<u32>(1u, 14681u, 54205u), 0i), Struct_1(vec3<u32>(1u, 134201u, 0u), -72276i), Struct_1(vec3<u32>(53026u, 13151u, 1u), 1i), Struct_1(vec3<u32>(1u, 36986u, 45388u), 1i), Struct_1(vec3<u32>(1u, 25218u, 4294967295u), 8960i), Struct_1(vec3<u32>(33578u, 46470u, 13904u), -1i), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), 0i), Struct_1(vec3<u32>(20621u, 4294967295u, 1u), i32(-2147483648)), Struct_1(vec3<u32>(1u, 1u, 59298u), -6664i), Struct_1(vec3<u32>(144770u, 4294967295u, 1u), -51608i), Struct_1(vec3<u32>(0u, 35333u, 0u), 1i), Struct_1(vec3<u32>(0u, 58013u, 0u), 61824i), Struct_1(vec3<u32>(7803u, 17150u, 4294967295u), -27578i), Struct_1(vec3<u32>(0u, 32370u, 1u), 1i), Struct_1(vec3<u32>(45421u, 4294967295u, 0u), 2147483647i), Struct_1(vec3<u32>(1u, 36510u, 1u), i32(-2147483648)), Struct_1(vec3<u32>(1u, 2747u, 20457u), 5079i), Struct_1(vec3<u32>(1u, 0u, 1u), 0i), Struct_1(vec3<u32>(1u, 30552u, 52640u), i32(-2147483648)), Struct_1(vec3<u32>(18000u, 0u, 40011u), -17534i), Struct_1(vec3<u32>(0u, 0u, 3829u), 2147483647i));

var<private> global1: vec3<i32> = vec3<i32>(i32(-2147483648), -1i, 2147483647i);

var<private> global2: vec4<bool> = vec4<bool>(true, false, false, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    global1 = -countOneBits(vec3<i32>(global1.x & (7843i & arg_1.b), -2147483647i, -67392i));
    global0 = array<Struct_1, 29>();
    let var_0 = arg_1;
    global2 = select(!(!select(!vec4<bool>(global2.x, true, global2.x, false), vec4<bool>(false, global2.x, global2.x, false), global2.x)), select(select(vec4<bool>(all(global2.wyw), true, global2.x, any(global2.xyy)), !vec4<bool>(false, global2.x, false, false), select(select(vec4<bool>(global2.x, false, global2.x, true), vec4<bool>(true, global2.x, false, global2.x), false), !vec4<bool>(global2.x, global2.x, global2.x, false), global2.x)), vec4<bool>(!all(global2.zx), true, true, max(arg_0, arg_0) >= 4294967295u), select(all(!global2.wzx), !(global2.x || false), !(global2.x | global2.x))), select(!select(vec4<bool>(global2.x, false, true, global2.x), select(vec4<bool>(global2.x, true, global2.x, false), vec4<bool>(global2.x, global2.x, global2.x, true), true), false), select(vec4<bool>(any(vec4<bool>(global2.x, true, global2.x, global2.x)), global2.x, global2.x, false), select(!vec4<bool>(global2.x, global2.x, false, global2.x), !vec4<bool>(global2.x, true, true, true), !vec4<bool>(global2.x, global2.x, true, global2.x)), global2.x), true));
    global2 = select(vec4<bool>(u_input.a != ~arg_1.a.x, true, select(all(global2.xww), any(vec4<bool>(global2.x, false, global2.x, true)), true), global2.x), select(select(!vec4<bool>(global2.x, false, false, global2.x), select(select(vec4<bool>(true, global2.x, true, false), vec4<bool>(true, false, global2.x, global2.x), true), !vec4<bool>(global2.x, global2.x, true, true), !vec4<bool>(true, global2.x, false, global2.x)), vec4<bool>(global2.x & global2.x, true, global2.x, false)), select(vec4<bool>(select(false, global2.x, true), global1.x >= -38040i, true, true), select(vec4<bool>(global2.x, false, global2.x, false), !vec4<bool>(global2.x, false, false, global2.x), !vec4<bool>(global2.x, global2.x, true, global2.x)), vec4<bool>(true, true, global2.x, var_0.a.x > 1u)), !(!vec4<bool>(false, global2.x, false, true))), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(global2.x, false, false, true), !vec4<bool>(global2.x, false, global2.x, false)), select(vec4<bool>(global2.x, global2.x, global2.x, true), select(vec4<bool>(false, global2.x, false, false), vec4<bool>(global2.x, false, global2.x, true), global2.x), vec4<bool>(false, global2.x, true, false)), true));
    return ~_wgslsmith_mult_u32(~(40388u | u_input.a), ~(~arg_1.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec4<bool> {
    global0 = array<Struct_1, 29>();
    var var_0 = -2147483647i;
    var_0 = firstTrailingBit(u_input.c.x);
    var var_1 = arg_0;
    var_0 = -arg_2.b;
    return vec4<bool>(!all(select(!vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(true, global2.x, false), !vec3<bool>(false, true, global2.x))), false, !global2.x, any(!(!vec2<bool>(global2.x, global2.x))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = select(-(~(vec3<i32>(-3206i, global1.x, arg_0.x) | vec3<i32>(arg_1.b, 1i, -37481i))), _wgslsmith_add_vec3_i32(-(~vec3<i32>(-66721i, global1.x, arg_1.b)) | vec3<i32>(_wgslsmith_add_i32(-1i, 0i), ~22835i, -13327i), _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.d, 0i, arg_1.b), u_input.c.wwz)), global2.x);
    global2 = select(select(func_4(Struct_1(abs(u_input.b), -arg_1.b), func_3(0u >> (0u % 32u), arg_1), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.xx >> (vec2<u32>(u_input.b.x, arg_1.a.x) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(arg_1.a.zx, arg_1.a.xz, arg_1.a.xz)), 29u)]), select(!vec4<bool>(global2.x, global2.x, global2.x, true), !(!vec4<bool>(global2.x, global2.x, global2.x, global2.x)), vec4<bool>(!global2.x, 176f == arg_2, global2.x, arg_0.x < arg_1.b)), vec4<bool>(all(!vec2<bool>(global2.x, global2.x)), all(vec3<bool>(global2.x, true, false)), true, any(global2.ywy))), func_4(arg_1, abs(41096u), Struct_1(max(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x), u_input.b), vec3<u32>(16006u, arg_1.a.x, u_input.b.x) << (arg_1.a % vec3<u32>(32u))), arg_0.x)), global2.x && all(global2.xxy));
    var var_1 = arg_1;
    global2 = vec4<bool>(global2.x, true || !(global2.x & global2.x), true, any(global2.xyy));
    return arg_1.a.x;
}

fn func_1(arg_0: vec2<u32>) -> vec4<bool> {
    var var_0 = vec4<u32>(reverseBits(~_wgslsmith_add_u32(~49954u, countOneBits(69734u))), 0u, _wgslsmith_clamp_u32(0u, func_2(-u_input.c.wxx, global0[_wgslsmith_index_u32(arg_0.x, 29u)], _wgslsmith_f_op_f32(step(-213f, 219f))), u_input.b.x) >> (arg_0.x % 32u), ~(~4294967295u));
    global0 = array<Struct_1, 29>();
    return func_4(global0[_wgslsmith_index_u32(var_0.x, 29u)], firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.x, u_input.b.x), ~countOneBits(var_0.x))), Struct_1(u_input.b, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    global1 = u_input.c.xwz;
    global1 = u_input.c.xww;
    let var_1 = select(vec4<i32>(-(i32(-1i) * -global1.x), abs(-_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, 1i, -2147483647i), vec3<i32>(2147483647i, u_input.c.x, global1.x))), -2147483647i, _wgslsmith_dot_vec3_i32(u_input.c.wyw, vec3<i32>(u_input.d, u_input.c.x, global1.x << (935u % 32u)))), -u_input.c, !(!select(select(vec4<bool>(global2.x, global2.x, true, global2.x), vec4<bool>(global2.x, true, false, true), global2.x), !vec4<bool>(false, true, global2.x, true), any(vec2<bool>(true, global2.x)))));
    global2 = func_1(select(u_input.b.yy, reverseBits(_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(u_input.b.x, 27801u)), ~vec2<u32>(1u, u_input.b.x))), any(!(!vec4<bool>(global2.x, global2.x, global2.x, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, vec4<i32>(~min(-1i, -1i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -13671i) << (u_input.b.xx % vec2<u32>(32u)), global1.zy), global1.x, select(countOneBits(global1.x), max(-52653i, -1i), false), var_1.x), ~(-(~49682i)), _wgslsmith_f_op_f32(1000f * 1f), reverseBits(-_wgslsmith_mult_i32(1i, u_input.d) | _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -63535i, global1.x, -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, global1.x, u_input.d, -1i), u_input.c))));
}

