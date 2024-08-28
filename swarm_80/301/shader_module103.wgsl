struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(23340i, -10798i, 56192i), vec3<bool>(false, true, true), -1314i, vec3<bool>(true, true, false));

var<private> global1: bool = true;

var<private> global2: vec4<i32>;

var<private> global3: bool = true;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-113f + -110f), _wgslsmith_f_op_f32(floor(-908f)), _wgslsmith_f_op_f32(min(111f, 1062f)), -128f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1162f, 1000f, 1270f, 714f), vec4<f32>(842f, -480f, -323f, -521f), arg_1.b)))))))));
    let var_1 = Struct_2(Struct_1(global2.yzw, select(arg_1.a.b, !select(arg_1.a.d, arg_1.a.d, global0.b), !(global0.d.x | true)), 0i, vec3<bool>(arg_1.b, false, !(var_0.x <= var_0.x))), !arg_0, arg_1.c);
    let var_2 = var_1;
    let var_3 = _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.c, ~(~var_1.c), abs(~var_1.c), 0u), countOneBits(vec4<u32>(_wgslsmith_sub_u32(~u_input.a, ~812u), var_2.c, ~var_2.c, 4543u << (~u_input.a % 32u))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(149f)))));
}

fn func_2(arg_0: vec3<i32>) -> vec3<i32> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(false, Struct_2(Struct_1(global2.yxw, global0.d, -41850i, vec3<bool>(global0.b.x, false, global0.b.x)), any(global0.d.xx), u_input.a))))), Struct_1(countOneBits(-(~vec3<i32>(global2.x, global0.a.x, global0.c))), global0.b, firstLeadingBit(_wgslsmith_mult_i32(4254i, _wgslsmith_mod_i32(global0.a.x, 29524i))), !select(!vec3<bool>(global0.d.x, global0.d.x, global0.b.x), vec3<bool>(false, true, global0.d.x), u_input.a <= u_input.a)));
    global3 = any(vec2<bool>(all(select(vec4<bool>(global0.b.x, false, false, var_0.b.b.x), !vec4<bool>(global0.b.x, global0.b.x, false, var_0.b.b.x), true)), select(true, true, var_0.b.b.x)));
    let var_1 = Struct_1(arg_0, global0.b, 40746i, select(select(!global0.d, select(select(vec3<bool>(var_0.b.b.x, true, true), vec3<bool>(false, var_0.b.d.x, true), global0.d), !vec3<bool>(true, true, global0.b.x), !vec3<bool>(false, global0.b.x, var_0.b.b.x)), vec3<bool>(global0.d.x && false, global0.b.x | false, !var_0.b.b.x)), vec3<bool>(any(select(var_0.b.d, vec3<bool>(var_0.b.d.x, false, var_0.b.d.x), global0.d)), select(2147483647i, 0i, global0.d.x) == global2.x, any(!vec4<bool>(true, true, true, global0.d.x))), global0.b));
    return ~(~(vec3<i32>(global0.c, global0.c, -2750i) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 4835u)) % vec3<u32>(32u))) << (firstTrailingBit(firstLeadingBit(min(vec3<u32>(17488u, u_input.a, u_input.a), vec3<u32>(0u, 3555u, 53513u)))) % vec3<u32>(32u)));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: u32, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_1(-_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(~global0.a, ~global2.xyx), select(~vec3<i32>(global0.c, 1i, global0.c), func_2(vec3<i32>(global0.c, -1i, arg_3)), !global0.d), vec3<i32>(0i & global0.a.x, 1304i >> (0u % 32u), -16379i)), !(!(!select(vec3<bool>(false, false, global0.d.x), vec3<bool>(true, false, false), global0.b.x))), ~(-2147483647i), global0.b);
    var var_1 = global0.a.x << (reverseBits(11521u) % 32u);
    global2 = firstTrailingBit(vec4<i32>(min(1i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(global0.c, arg_3), var_0.c)), 1i, countOneBits(1i << (countOneBits(0u) % 32u)), -9867i));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(413f, 20999u, ~(~(~min(u_input.a, 9490u))), _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(global0.a.x ^ global0.c, 0i), ~_wgslsmith_sub_i32(1i, global2.x)), global2.x));
    global0 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -270f), u_input.a, _wgslsmith_clamp_u32(~abs(~83979u), 0u, max(select(1u, u_input.a, !var_0.b.x), ~_wgslsmith_clamp_u32(u_input.a, u_input.a, 22212u))), global2.x);
    let var_1 = u_input.a;
    let var_2 = Struct_3(295f, Struct_1(~global2.zzz, global0.d, -func_2(vec3<i32>(global2.x, global2.x, 29501i)).x, select(var_0.b, vec3<bool>(true, true, true), !func_1(1572f, 31483u, 53531u, global0.c).b)));
    var var_3 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer((~(vec4<u32>(u_input.a, 11791u, var_1, var_1) >> (vec4<u32>(var_1, var_1, u_input.a, 4294967295u) % vec4<u32>(32u))) >> ((_wgslsmith_clamp_vec4_u32(vec4<u32>(77257u, 844u, var_1, u_input.a), vec4<u32>(4294967295u, 93933u, var_1, 44952u), vec4<u32>(u_input.a, 0u, 91040u, var_1)) & _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 33620u, 4294967295u, 1u), vec4<u32>(u_input.a, var_1, 1u, u_input.a))) % vec4<u32>(32u))) ^ vec4<u32>(_wgslsmith_mult_u32(~u_input.a, var_1 >> (8106u % 32u)), 5888u, ~var_1, ~u_input.a));
}

