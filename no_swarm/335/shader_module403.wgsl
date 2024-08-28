struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<u32>(18509u, 88325u), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), -749f), 2147483647i, vec3<u32>(4294967295u, 4294967295u, 38628u), Struct_1(vec2<u32>(164940u, 30141u), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), 763f), true);

var<private> global2: Struct_1;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> u32 {
    let var_0 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-982f, _wgslsmith_f_op_f32(f32(-1f) * -123f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-316f)), arg_1.a.d))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.a.d, global1.d.d)) + _wgslsmith_f_op_f32(global1.a.d + global3.d))));
    global0 = global3.b.xzy;
    var var_1 = max(arg_1.c.xz, (arg_1.a.a >> (global2.a % vec2<u32>(32u))) >> (firstTrailingBit(_wgslsmith_add_vec2_u32(select(global2.a, vec2<u32>(global1.c.x, global1.a.a.x), global3.b.x), abs(arg_1.c.zy))) % vec2<u32>(32u)));
    global3 = global1.a;
    var var_2 = select(max(arg_2 >> (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 12303u), vec2<u32>(global2.a.x, var_1.x)), ~0u) % 32u), 2147483647i), _wgslsmith_div_i32(arg_2, _wgslsmith_clamp_i32(~(~u_input.b), firstLeadingBit(max(arg_2, 0i)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(global1.b, global1.b, -14406i), vec3<i32>(arg_2, u_input.b, u_input.a)))), true || !(!(!global3.b.x)));
    return _wgslsmith_dot_vec3_u32(arg_1.c, vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(5382u, 1u), vec2<u32>(20197u, global1.d.a.x)) ^ 18260u, _wgslsmith_mult_u32(global1.a.a.x, global1.a.a.x) | ~87957u), 7776u, 4294967295u & arg_0));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec4<bool> {
    var var_0 = select(!vec3<bool>(true, any(!global2.c.yxw), true), !vec3<bool>(true, !(arg_0.a.x > 9707u), true), global1.d.c.x);
    var var_1 = firstLeadingBit(firstTrailingBit(vec4<u32>(0u, ~select(19401u, arg_1, var_0.x), 5461u, 37658u)));
    var var_2 = global1.b < global1.b;
    var var_3 = !vec3<bool>(false, true, all(vec3<bool>(any(vec3<bool>(global3.b.x, arg_0.b.x, global0.x)), all(vec4<bool>(arg_0.b.x, global0.x, arg_0.b.x, global3.c.x)), -555f >= global1.d.d)));
    global0 = !select(!(!arg_0.b.yzz), arg_0.b.zwy, arg_0.c.x);
    return global3.c;
}

fn func_2() -> Struct_2 {
    var var_0 = select(select(!(!select(global1.d.b, vec4<bool>(global2.b.x, false, global2.c.x, true), vec4<bool>(global0.x, global3.c.x, global2.b.x, true))), vec4<bool>(any(vec4<bool>(false, global0.x, true, global0.x)), global0.x | global0.x, true, !any(vec3<bool>(false, false, global0.x))), global3.b.x), !vec4<bool>(select(global3.c.x, global0.x, global1.d.c.x) && all(vec3<bool>(global1.e, global3.c.x, global3.c.x)), global2.c.x, _wgslsmith_f_op_f32(floor(534f)) > _wgslsmith_f_op_f32(round(global1.d.d)), global2.c.x), vec4<bool>(all(select(global1.a.c.zyy, global1.a.c.wzz, !global3.b.x)), !(!global2.b.x), global1.d.b.x, global1.d.b.x));
    let var_1 = global2.c.x;
    let var_2 = Struct_2(Struct_1(vec2<u32>(reverseBits(4294967295u), reverseBits(7997u)) << (firstTrailingBit(global2.a) % vec2<u32>(32u)), vec4<bool>(true, any(global3.c), true, true), global2.c, _wgslsmith_f_op_f32(f32(-1f) * -1090f)), ~u_input.b, min(vec3<u32>(~global2.a.x << (select(global2.a.x, 4294967295u, global0.x) % 32u), 28485u, global2.a.x | (4294967295u & global1.a.a.x)), _wgslsmith_div_vec3_u32(vec3<u32>(~34172u, global1.d.a.x, firstTrailingBit(55759u)), vec3<u32>(~70537u, 0u & global3.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.x, global1.c.x, global1.c.x, global3.a.x), vec4<u32>(global2.a.x, 0u, 0u, 0u))))), Struct_1(vec2<u32>(global2.a.x, global1.d.a.x), func_4(global1.d, func_3(79957u, Struct_2(global1.a, global1.b, vec3<u32>(1u, 1u, global3.a.x), Struct_1(global3.a, vec4<bool>(var_0.x, global0.x, true, global0.x), global2.b, -208f), global1.d.c.x), -66862i << (global1.d.a.x % 32u))), global1.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.d) + 1237f))), global3.c.x);
    var var_3 = u_input.a;
    var var_4 = -166f;
    return Struct_2(var_2.a, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(global1.b, 34143i), ~(~vec2<i32>(u_input.b, 0i))), vec2<i32>(-1i, var_2.b)), vec3<u32>(_wgslsmith_dot_vec2_u32(~min(vec2<u32>(global2.a.x, 1u), vec2<u32>(4294967295u, global3.a.x)), global2.a), 1733u, ~(~var_2.c.x)), var_2.d, var_2.d.b.x);
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> u32 {
    let var_0 = arg_0;
    var var_1 = Struct_1(global3.a, !global3.b, vec4<bool>(global2.c.x, true, true, global2.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d + 709f)) - _wgslsmith_f_op_f32(-1309f * _wgslsmith_f_op_f32(global1.d.d * var_0.d))), _wgslsmith_f_op_f32(global1.d.d - arg_0.d), true)));
    var var_2 = global3.c;
    global1 = func_2();
    let var_3 = _wgslsmith_f_op_f32(-670f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1026f, 1203f))))));
    return global2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<i32>(_wgslsmith_mult_i32(-24393i, ~u_input.b), max(_wgslsmith_mult_i32(1i, -1i), -3257i)) << (max(~(~global2.a), global1.d.a) % vec2<u32>(32u)), ~(vec2<i32>(-39027i, abs(-45333i)) << ((global3.a | max(global1.d.a, global3.a)) % vec2<u32>(32u))), global0.zx);
    let var_1 = reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_clamp_u32(4294967295u, global1.a.a.x, global3.a.x) << (_wgslsmith_mod_u32(global2.a.x, global3.a.x) % 32u), 1u, global2.a.x), vec4<u32>(abs(4294967295u), _wgslsmith_add_u32(global1.c.x, global1.c.x) << (global2.a.x % 32u), global1.a.a.x, ~func_1(Struct_1(vec2<u32>(global1.d.a.x, global1.c.x), vec4<bool>(global2.b.x, global0.x, true, global3.c.x), vec4<bool>(global0.x, global3.b.x, true, false), 226f), global2.a.x)), vec4<u32>(global1.c.x ^ global1.a.a.x, _wgslsmith_mod_u32(14798u, global3.a.x), max(6600u, global2.a.x), 4294967295u) | _wgslsmith_mult_vec4_u32(vec4<u32>(24931u, 90140u, global3.a.x, 0u) | vec4<u32>(global3.a.x, 33048u, global1.c.x, 15058u), _wgslsmith_sub_vec4_u32(vec4<u32>(12065u, global1.c.x, 14552u, 4294967295u), vec4<u32>(global3.a.x, 24554u, 9029u, 1u)))));
    var var_2 = global2.c;
    let var_3 = 2147483647i;
    var var_4 = vec2<u32>(~_wgslsmith_div_u32(~global2.a.x, ~global3.a.x), global2.a.x);
    global1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-abs(global1.b)) ^ (u_input.a ^ var_0.x), global2.d);
}

