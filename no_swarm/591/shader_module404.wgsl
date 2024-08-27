struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-13531i, false);

var<private> global1: array<Struct_2, 30>;

var<private> global2: Struct_2;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<bool> {
    global1 = array<Struct_2, 30>();
    var var_0 = -min(global2.c.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(global2.c.a, 1i, 2147483647i), vec3<i32>(261i, global2.a, u_input.a))) < countOneBits(countOneBits(global2.c.a));
    let var_1 = global0.b;
    global1 = array<Struct_2, 30>();
    var var_2 = true;
    return !select(vec4<bool>(true, true, !all(vec4<bool>(false, false, global2.d, global0.b)), global2.d), vec4<bool>(true, global0.b, true, true), !(!(!vec4<bool>(true, true, true, global2.d))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec3<bool>(true, global2.c.b, (firstTrailingBit(_wgslsmith_add_i32(u_input.d.x, global0.a)) != abs(global2.a)) || global2.d);
    let var_1 = select(select(!vec4<bool>(var_0.x || global2.d, all(vec3<bool>(true, false, global2.d)), true, !global2.c.b), select(select(vec4<bool>(true, true, global2.d, global2.c.b), func_3(), false), select(vec4<bool>(true, false, var_0.x, false), vec4<bool>(true, global0.b, global0.b, arg_0.b), true), true), !select(vec4<bool>(false, global2.c.b, false, false), !vec4<bool>(global2.d, var_0.x, global0.b, false), all(vec2<bool>(global2.c.b, true)))), select(func_3(), !(!vec4<bool>(var_0.x, false, var_0.x, global0.b)), vec4<bool>(true, true | var_0.x, arg_0.b, func_3().x)), select(func_3(), vec4<bool>(global0.b, true, false & arg_0.b, true), !vec4<bool>(true, arg_0.b, !arg_0.b, u_input.c.x >= global2.b.x)));
    let var_2 = ~(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(40948u, global2.b.x), global2.b.x));
    let var_3 = Struct_1(u_input.a, !var_1.x);
    let var_4 = abs(vec4<u32>(u_input.c.x, var_2, firstLeadingBit(1u), 1u));
    return arg_0;
}

fn func_1(arg_0: bool) -> i32 {
    global0 = func_2(global2.c);
    global0 = global2.c;
    let var_0 = func_2(global2.c);
    let var_1 = select(vec2<bool>(arg_0 && false, false), vec2<bool>(!(!(global0.a > var_0.a)), true), select(vec2<bool>(func_3().x, true), func_3().zx, select(select(arg_0, var_0.b, global0.b) & func_2(global2.c).b, any(vec3<bool>(false, arg_0, var_0.b)), !global2.c.b != var_0.b)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2532f + _wgslsmith_f_op_f32(1010f + 1661f)))))), -773f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1113f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(149f + 236f)))));
    return ~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, -2147483647i, global0.a, global2.c.a) ^ (vec4<i32>(0i, -28316i, -2147483647i, global2.a) | vec4<i32>(-7475i, 0i, -2147483647i, var_0.a)), (vec4<i32>(global2.a, 7447i, global0.a, 2147483647i) ^ vec4<i32>(10645i, 2147483647i, 35201i, global0.a)) << (global2.b % vec4<u32>(32u))), select(-(vec4<i32>(global2.a, 2147483647i, -26598i, global0.a) << (vec4<u32>(u_input.b, u_input.c.x, 12718u, 23568u) % vec4<u32>(32u))), vec4<i32>(~4034i, global0.a, var_0.a, select(15339i, var_0.a, var_0.b)), select(true, !var_0.b, var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(global2.b.zxx, global2.b.zwz, !vec3<bool>(true, global2.d, _wgslsmith_f_op_f32(select(458f, 694f, global2.d)) > _wgslsmith_f_op_f32(sign(375f))));
    var var_1 = global1[_wgslsmith_index_u32(abs(var_0.x), 30u)];
    var var_2 = Struct_1(2147483647i, false);
    let var_3 = abs(~abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-19914i, var_2.a), u_input.d)) >> (38295u % 32u));
    var var_4 = vec2<i32>(~(-51812i), -2147483647i) & ~u_input.d;
    var var_5 = Struct_1(func_1(global2.c.b), (_wgslsmith_mod_u32(min(u_input.b, 20615u), var_0.x) == var_1.b.x) == all(!vec2<bool>(var_2.b, true)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(reverseBits(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.a, -2147483647i, 1i), vec3<i32>(3733i, global0.a, 1i), vec3<i32>(var_5.a, global2.c.a, -47520i))))), -1215f);
}

