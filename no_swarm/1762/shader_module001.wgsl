struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec2<i32>,
    d: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_4;

var<private> global2: vec4<i32> = vec4<i32>(1i, -13485i, 29567i, 2147483647i);

var<private> global3: f32 = 1944f;

var<private> global4: vec3<u32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    return _wgslsmith_mod_i32(global1.d.c, global2.x);
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> Struct_4 {
    global2 = vec4<i32>(1095i, 42108i, func_3() | _wgslsmith_mult_i32(abs(arg_1), _wgslsmith_add_i32(abs(arg_0.c), max(arg_0.c, -2818i))), global2.x);
    let var_0 = Struct_3(_wgslsmith_add_i32(arg_1, 9060i), global1.d.b, arg_0.c);
    var var_1 = global1.d;
    var var_2 = vec3<u32>(~global4.x, 1u, 1u);
    global4 = vec3<u32>(u_input.a.x, countOneBits(78687u), 1u);
    return Struct_4(Struct_2(all(!var_1.b.a.zxy), arg_0.b, var_1.b.a.x), _wgslsmith_f_op_vec2_f32(max(global1.b, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(exp2(global1.b.x)), _wgslsmith_f_op_f32(-global1.b.x)))))), vec2<i32>(0i, _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_mult_i32(global2.x, var_1.a)), ~_wgslsmith_add_i32(-22734i, -21745i))), Struct_3(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(~global2.wz, global1.c), _wgslsmith_div_i32(_wgslsmith_add_i32(var_0.a, global1.d.c), global2.x)), var_0.b, ~(-2147483647i)));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_sub_vec4_u32(~(~(~(vec4<u32>(global4.x, global4.x, 0u, u_input.a.x) << (vec4<u32>(global4.x, u_input.a.x, 4294967295u, 1u) % vec4<u32>(32u))))), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.a.x, 27826u, global4.x, 0u)), vec4<u32>(~_wgslsmith_mod_u32(1u, 1u), global4.x, u_input.a.x << (~41939u % 32u), 87073u)));
    global1 = func_2(global1.d, _wgslsmith_div_i32(2147483647i & global1.c.x, -40067i));
    var var_1 = global1.d.c;
    var var_2 = _wgslsmith_div_i32(_wgslsmith_sub_i32(global2.x, ~countOneBits(global2.x)), -1i);
    let var_3 = !(!vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -569f) >= global1.b.x, global1.d.b.a.x, func_2(global1.d, global2.x).d.b.a.x));
    return global0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_add_i32(global1.d.c, global1.c.x) << (10269u % 32u), Struct_1(vec4<bool>(func_1(), func_1(), true, _wgslsmith_f_op_f32(trunc(783f)) <= func_2(global1.d, global2.x).b.x)), 51905i);
    var var_1 = global1.b.x;
    var var_2 = global1.a;
    let var_3 = false;
    var var_4 = Struct_3(19914i, func_2(Struct_3(reverseBits(_wgslsmith_add_i32(397i, var_0.c)), global1.d.b, global2.x), reverseBits(-2147483647i)).d.b, global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global1.b.x - _wgslsmith_f_op_f32(-global1.b.x)));
}

