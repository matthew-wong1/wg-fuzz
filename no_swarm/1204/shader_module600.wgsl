struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(-1257f, -243f, 1000f, -783f, -496f, -1190f, 1354f, -1241f, 147f, -1329f, 1206f, 168f, -502f, -1342f, -180f);

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(20648i, Struct_1(false, vec2<u32>(1u, 1u), vec3<u32>(4294967295u, 1u, 4294967295u), 1u, 573f), Struct_1(true, vec2<u32>(55099u, 38449u), vec3<u32>(4294967295u, 8751u, 4294967295u), 0u, -1000f), vec3<f32>(-616f, 471f, -667f)));

var<private> global2: Struct_1 = Struct_1(false, vec2<u32>(4294967295u, 55325u), vec3<u32>(0u, 23482u, 80073u), 1u, -1236f);

var<private> global3: array<Struct_2, 26>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = select(select(vec3<bool>((41666i & arg_0) > (19075i & arg_0), global2.a, global2.a), vec3<bool>(all(select(vec4<bool>(global2.a, false, global2.a, false), vec4<bool>(global2.a, false, global2.a, global2.a), global2.a)), any(select(vec2<bool>(true, false), vec2<bool>(true, global2.a), vec2<bool>(true, global2.a))), 25768u < global2.d), !global2.a), !(!select(vec3<bool>(true, global2.a, global2.a), select(vec3<bool>(global2.a, global2.a, true), vec3<bool>(true, global2.a, true), global2.a), true)), !(!vec3<bool>(any(vec4<bool>(global2.a, true, false, false)), any(vec4<bool>(false, global2.a, true, true)), arg_0 <= 2147483647i)));
    var var_1 = u_input.b;
    var var_2 = global2.e;
    let var_3 = vec4<f32>(396f, 1332f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), global0[_wgslsmith_index_u32(global2.c.x, 15u)]);
    global0 = array<f32, 15>();
    return Struct_1(!(!global2.a), min(~(~select(global2.c.zx, vec2<u32>(u_input.b.x, 24536u), global2.a)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(33803u, u_input.b.x), _wgslsmith_sub_vec2_u32(vec2<u32>(16132u, global2.b.x), vec2<u32>(4296u, 20491u)), ~vec2<u32>(global2.b.x, 4294967295u))), ~u_input.a & vec3<u32>(0u, ~u_input.b.x, var_1.x), u_input.a.x, global2.e);
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.e - 198f), _wgslsmith_f_op_f32(532f + global2.e)), 330f)))), 1f, _wgslsmith_f_op_f32(-global2.e), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, 1u), 15u)]);
    let var_1 = arg_0.d.d;
    global1 = array<Struct_2, 1>();
    let var_2 = Struct_3(72189u, reverseBits(abs(reverseBits(_wgslsmith_add_vec3_i32(arg_0.b, u_input.c.wzw)))), Struct_1(all(select(select(vec2<bool>(global2.a, arg_0.d.c.a), vec2<bool>(true, arg_0.d.c.a), global2.a), select(vec2<bool>(global2.a, global2.a), vec2<bool>(arg_0.c.a, true), false), any(vec4<bool>(true, global2.a, arg_0.c.a, arg_0.c.a)))), ~(~(vec2<u32>(57653u, 0u) ^ vec2<u32>(24843u, global2.b.x))), ~(~vec3<u32>(0u, global2.d, 4294967295u) >> (global2.c % vec3<u32>(32u))), _wgslsmith_add_u32(~reverseBits(45593u), firstTrailingBit(~73256u)), -1037f), arg_0.d);
    var var_3 = Struct_3(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(u_input.a.x, 77667u), _wgslsmith_add_u32(firstLeadingBit(var_2.d.c.c.x), select(firstLeadingBit(0u), _wgslsmith_dot_vec2_u32(arg_0.d.c.b, arg_0.d.b.c.zx), global2.b.x != 5581u)), abs(0u)), min(vec3<i32>(_wgslsmith_add_i32(arg_0.d.a, var_2.d.a), u_input.c.x, max(var_2.d.a, ~u_input.c.x)), arg_0.b | -vec3<i32>(u_input.c.x, var_2.b.x, 35309i)), var_2.c, arg_0.d);
    return select(!select(vec3<bool>(arg_0.c.a, !var_2.d.b.a, arg_0.d.b.a), vec3<bool>(var_3.c.a, var_2.d.c.a, 9294u >= var_3.a), select(vec3<bool>(true, true, false), vec3<bool>(var_2.d.b.a, true, false), 4294967295u >= var_2.c.b.x)), select(select(vec3<bool>(true, var_2.c.a | true, arg_0.d.c.a), select(vec3<bool>(true, true, true), !vec3<bool>(var_2.c.a, global2.a, true), !var_3.d.c.a), vec3<bool>(arg_0.b.x == 2021i, true, true)), vec3<bool>(func_2(u_input.c.x & var_3.d.a).a, 1u == ~u_input.a.x, arg_0.c.a), false), vec3<bool>(arg_0.c.a, true, global2.a));
}

fn func_1() -> vec4<bool> {
    let var_0 = false;
    let var_1 = false;
    global3 = array<Struct_2, 26>();
    let var_2 = Struct_1(var_1, vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(global2.c, select(u_input.a, global2.c, true)), u_input.b.x), 4294967295u), select(select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, global2.c.x, 45232u), vec3<u32>(global2.c.x, global2.d, u_input.b.x)), max(vec3<u32>(51485u, global2.b.x, u_input.b.x), global2.c), global2.a) & (vec3<u32>(1u, 29985u, 18028u) >> (vec3<u32>(global2.d, u_input.a.x, 20842u) % vec3<u32>(32u))), ~select(global2.c, vec3<u32>(global2.c.x, 46517u, 51137u), true), func_3(Struct_3(~24676u, u_input.c.ywy, func_2(u_input.c.x), Struct_2(u_input.c.x, Struct_1(global2.a, u_input.b.yw, u_input.a, u_input.a.x, -633f), Struct_1(true, u_input.a.zx, u_input.b.xyx, 0u, 407f), vec3<f32>(global0[_wgslsmith_index_u32(global2.b.x, 15u)], -1000f, global0[_wgslsmith_index_u32(global2.c.x, 15u)]))))), abs(u_input.b.x), _wgslsmith_f_op_f32(-global2.e));
    global1 = array<Struct_2, 1>();
    return !(!(!vec4<bool>(any(vec2<bool>(var_1, var_1)), global2.a, var_1, func_3(Struct_3(0u, vec3<i32>(-1i, 423i, 9482i), var_2, Struct_2(4862i, var_2, var_2, vec3<f32>(global2.e, var_2.e, -208f)))).x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global2.a && any(func_1()), vec2<u32>(63913u, _wgslsmith_clamp_u32(32044u, 1u, 99017u)), vec3<u32>(u_input.a.x | ~4294967295u, 19338u, u_input.a.x), u_input.a.x ^ 47244u, global2.e);
    global3 = array<Struct_2, 26>();
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-814f, global0[_wgslsmith_index_u32(var_0.d, 15u)])), var_0.e), _wgslsmith_f_op_f32(-global2.e), true)), var_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-519f, global2.e))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(min(select(global2.b.x, 20808u, global2.a), ~4294967295u), 15u)]))));
    global3 = array<Struct_2, 26>();
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global2.e)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-874f, global0[_wgslsmith_index_u32(u_input.b.x, 15u)]))))), -702f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(873f, 1f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_0.e))))), global2.e) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e, global2.e, var_0.e, -130f)))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 17176u), 15u)], var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -764f), _wgslsmith_f_op_f32(-205f * 1944f))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) * -607f)), global0[_wgslsmith_index_u32(select(2785u, 13305u, _wgslsmith_div_f32(var_1.x, var_0.e) >= 1f), 15u)], -650f, global2.e));
    global0 = array<f32, 15>();
    let var_2 = u_input.c.x;
    global1 = array<Struct_2, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(~59799u), var_0.c.x), 15u)], var_2);
}

