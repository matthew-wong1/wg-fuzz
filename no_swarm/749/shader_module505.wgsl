struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(106f, false);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_f32(456f, -1339f), false);
    global2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-999f - 340f)), any(vec4<bool>(var_0.b, arg_1.b, (u_input.a.x < 23198u) & arg_1.b, var_0.b)));
    global2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)), var_0.b);
    let var_1 = -(~vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(-29378i, u_input.c, arg_2)), (-8238i | arg_2) & 7830i));
    global0 = vec4<bool>(var_0.b && var_0.b, false, arg_1.b, any(vec4<bool>(any(vec4<bool>(true, false, false, true)), true, _wgslsmith_f_op_f32(sign(956f)) != -512f, arg_1.b || true)));
    return arg_1;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<f32>) -> i32 {
    let var_0 = select(min(_wgslsmith_add_vec2_u32(u_input.a.xz, ~vec2<u32>(u_input.a.x, 10601u)), arg_0.xx), vec2<u32>(arg_0.x, arg_0.x), global0.zx) & vec2<u32>(~10921u, ~select(abs(arg_0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(22235u, 55826u, u_input.a.x), vec3<u32>(u_input.a.x, arg_0.x, u_input.a.x)), -1000f < global2.a));
    var var_1 = Struct_1(global2.a, -_wgslsmith_mult_i32(~1i, _wgslsmith_mult_i32(u_input.c, -32357i)) == -26792i);
    var var_2 = func_2(u_input.b, Struct_1(-1538f, any(global0.yw)), u_input.d.x);
    global2 = func_2(-21555i, Struct_1(-1478f, var_1.b), _wgslsmith_mult_i32(u_input.d.x, -(~(u_input.e.x | u_input.d.x))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-global2.a)))))), true);
    return firstTrailingBit(-u_input.c);
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.a))), global2.b);
    var_0 = arg_0;
    global2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -137f), var_0.b);
    var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - 797f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a, var_0.a)))), _wgslsmith_f_op_f32(ceil(var_0.a)))), false);
    var var_1 = u_input.a.x;
    return vec3<i32>(~(-1i), u_input.e.x, _wgslsmith_dot_vec2_i32(abs(select(u_input.e, u_input.d.yz, vec2<bool>(global2.b, arg_0.b))), vec2<i32>(u_input.b, -1i ^ u_input.b)) >> (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstTrailingBit((_wgslsmith_add_vec3_i32(u_input.d, u_input.d) >> (countOneBits(u_input.a.zxy) % vec3<u32>(32u))) & vec3<i32>(min(48770i, u_input.c), func_1(u_input.a.wxz, vec2<f32>(global2.a, global2.a)), abs(-25i)));
    let var_1 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(~1u, _wgslsmith_mod_u32(min(u_input.a.x, u_input.a.x), u_input.a.x), 1u, ~firstTrailingBit(0u)), vec4<u32>(u_input.a.x, ~u_input.a.x, u_input.a.x, ~34406u), u_input.a);
    var_0 = func_3(func_2(u_input.d.x & ~(-13879i), Struct_1(global2.a, true), u_input.b));
    let var_2 = _wgslsmith_div_i32(reverseBits(0i), ~(-2147483647i)) << (~4294967295u % 32u);
    global2 = func_2(abs(22644i) >> (~countOneBits(u_input.a.x) % 32u), Struct_1(_wgslsmith_f_op_f32(328f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1350f) + global2.a)), false), 1i);
    global0 = vec4<bool>(all(vec3<bool>(global2.b & global0.x, false, !global2.b)), select(!select(global2.a < global2.a, func_2(57931i, Struct_1(global2.a, global0.x), 0i).b, true), -1i >= _wgslsmith_div_i32(firstTrailingBit(1i), -36639i), true), all(!select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global2.b, global0.x, false, global2.b), vec4<bool>(true, true, global2.b, false)), global0.x & global0.x)), !select(global2.b, false, !(!global2.b)));
    var var_3 = select(vec4<bool>(!(true || global2.b), global0.x, all(select(!vec3<bool>(true, global2.b, global2.b), select(vec3<bool>(false, global0.x, global0.x), global0.wwz, global2.b), true)), global2.b), !vec4<bool>(true, true, all(select(vec4<bool>(false, global2.b, global0.x, true), vec4<bool>(global2.b, global0.x, false, true), true)), !select(global0.x, false, global0.x)), select(any(select(select(global0.xz, vec2<bool>(global0.x, global0.x), true), !vec2<bool>(true, global0.x), all(global0.wxz))), true, !(global2.b && !global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, -410f)) + vec2<f32>(1000f, _wgslsmith_f_op_f32(sign(-1378f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, _wgslsmith_f_op_f32(max(-592f, global2.a))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(407f, 972f) - vec2<f32>(global2.a, global2.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, 1000f) * vec2<f32>(805f, 405f)), vec2<bool>(false, false)))), select(!select(vec2<bool>(false, global2.b), var_3.wy, vec2<bool>(false, false)), select(select(var_3.xx, vec2<bool>(true, global2.b), var_3.zx), select(vec2<bool>(true, false), vec2<bool>(true, false), global2.b), false || var_3.x), select(17054u, u_input.a.x, true) != _wgslsmith_mult_u32(var_1.x, u_input.a.x)))), _wgslsmith_sub_u32(50700u, _wgslsmith_div_u32(_wgslsmith_sub_u32(32081u, 0u), var_1.x)), 828f, _wgslsmith_mod_i32(-7431i, 2147483647i), vec2<i32>(u_input.d.x, _wgslsmith_div_i32(u_input.d.x, var_0.x)));
}

