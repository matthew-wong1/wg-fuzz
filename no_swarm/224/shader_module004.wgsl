struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_3 = Struct_3(vec2<i32>(-1i, 2147483647i), true);

var<private> global2: array<bool, 19>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec4<bool>) -> vec4<bool> {
    let var_0 = vec3<bool>(all(!(!vec3<bool>(false, arg_2.x, true))), !all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), !vec2<bool>(arg_2.x, global1.b), any(vec2<bool>(false, false)))), false);
    global0 = true;
    let var_1 = ~(~(~firstTrailingBit(vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, u_input.a.x) ^ vec4<u32>(0u, u_input.a.x, 1u, u_input.c.x))));
    let var_2 = select(var_0, select(vec3<bool>(true, var_0.x, var_0.x), select(select(!vec3<bool>(arg_2.x, arg_2.x, global1.b), !vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, false, true)), !arg_2.xxx, select(true, false | global2[_wgslsmith_index_u32(6079u, 19u)], global2[_wgslsmith_index_u32(~var_1.x, 19u)])), !(!var_0.x)), ((u_input.b == 27119i) || true) | any(vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(var_1.x, 19u)], true)));
    global0 = all(var_2.zx);
    return vec4<bool>(false, any(arg_2), all(vec2<bool>(true, true)), arg_2.x);
}

fn func_2() -> Struct_4 {
    let var_0 = global1.b;
    let var_1 = _wgslsmith_f_op_f32(-440f + -626f);
    var var_2 = 1u;
    global0 = global1.b;
    var_2 = 30587u;
    return Struct_4(_wgslsmith_div_f32(546f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-553f, -963f))))), (global2[_wgslsmith_index_u32(u_input.c.x, 19u)] && !global2[_wgslsmith_index_u32(u_input.a.x, 19u)]) || any(vec2<bool>(select(false, global2[_wgslsmith_index_u32(4294967295u, 19u)], false), global1.b)), select(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - -141f), 52996u, !vec4<bool>(false, global1.b, global2[_wgslsmith_index_u32(u_input.a.x, 19u)], global1.b)), !vec4<bool>(global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(max(u_input.a.x, 49059u), 19u)], false, all(vec2<bool>(global1.b, global1.b))), !(!vec4<bool>(true, true, global1.b, true))));
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> Struct_4 {
    global2 = array<bool, 19>();
    let var_0 = ~(-(_wgslsmith_add_vec3_i32(max(vec3<i32>(-2147483647i, u_input.b, 2147483647i), vec3<i32>(-29425i, 37783i, 2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -1i, 34711i), vec3<i32>(-12610i, 2147483647i, -18917i), vec3<i32>(global1.a.x, global1.a.x, global1.a.x))) ^ vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 15707i, 11885i, -40332i), vec4<i32>(0i, u_input.b, u_input.b, u_input.b)), 1i, global1.a.x)));
    let var_1 = func_2();
    let var_2 = 37758i;
    global1 = Struct_3(select(countOneBits(global1.a ^ firstLeadingBit(var_0.xz)), vec2<i32>(global1.a.x, -firstLeadingBit(global1.a.x)), var_1.c.yx), all(arg_1.c.ww));
    return func_2();
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> f32 {
    let var_0 = Struct_3(vec2<i32>(_wgslsmith_dot_vec2_i32(global1.a, vec2<i32>(reverseBits(-29840i), global1.a.x)), abs(i32(-1i) * -global1.a.x)), select(global2[_wgslsmith_index_u32(~(~arg_0) & ~arg_1.x, 19u)], -58793i == u_input.b, false));
    let var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2799f)), func_2());
    let var_2 = arg_0;
    let var_3 = firstTrailingBit(vec2<u32>(arg_0, _wgslsmith_sub_u32(arg_1.x, _wgslsmith_add_u32(19292u, var_2)) << ((_wgslsmith_dot_vec3_u32(vec3<u32>(39343u, 0u, 1u), vec3<u32>(0u, u_input.a.x, 1u)) ^ arg_0) % 32u)));
    var var_4 = vec2<u32>(_wgslsmith_dot_vec2_u32(var_3, ~(~vec2<u32>(4294967295u, arg_0) ^ ~vec2<u32>(0u, arg_1.x))), 28003u);
    return 230f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1288f, _wgslsmith_f_op_f32(func_1(4294967295u, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.a.x), vec3<u32>(0u, 85504u, 23902u))))), -1075f)));
    global2 = array<bool, 19>();
    let var_1 = !func_2().c;
    var var_2 = _wgslsmith_add_i32(global1.a.x, -6512i);
    var var_3 = -reverseBits(firstTrailingBit(-35599i));
    let var_4 = Struct_4(func_2().a, global1.b, func_4(_wgslsmith_div_f32(var_0.a, -1000f), Struct_4(var_0.a, all(var_1.yx), var_1)).c);
    let var_5 = vec2<bool>(func_4(_wgslsmith_f_op_f32(-var_4.a), func_4(_wgslsmith_f_op_f32(func_2().a + 1623f), var_4)).b, true);
    global2 = array<bool, 19>();
    var_0 = Struct_1(_wgslsmith_f_op_f32(-var_4.a));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(u_input.c.x));
}

