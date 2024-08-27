struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<i32, 30>;

var<private> global2: array<i32, 9> = array<i32, 9>(1i, 0i, 23824i, 1i, -25023i, 3201i, -1i, i32(-2147483648), i32(-2147483648));

var<private> global3: vec4<u32> = vec4<u32>(0u, 32757u, 66818u, 4294967295u);

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec4<f32>) -> vec3<bool> {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, 13321i << (global4.b.x % 32u), 18829i), u_input.a.xzw), _wgslsmith_add_i32(-54170i, ~global1[_wgslsmith_index_u32(~global4.b.x, 30u)]));
    var_0 = countOneBits(u_input.a.zx);
    var var_1 = 11967u;
    global0 = Struct_3(reverseBits(min(global0.a, global0.a)), Struct_2(global0.b.a, select(global0.b.b | false, any(vec3<bool>(global4.a.x, global4.a.x, arg_0)), all(global4.c)) | (_wgslsmith_f_op_f32(-arg_1) != -207f), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global0.b.c.x, 834f)))), -919f, _wgslsmith_f_op_f32(463f * _wgslsmith_f_op_f32(-643f + -590f)), _wgslsmith_f_op_f32(f32(-1f) * -1011f)), vec2<f32>(_wgslsmith_f_op_f32(-global0.b.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1364f * -1212f) + _wgslsmith_f_op_f32(round(arg_1))))), vec3<bool>(global4.a.x, !any(global0.b.a.c), arg_0));
    let var_2 = any(global4.c);
    return select(vec3<bool>(!var_2, false, true & any(vec4<bool>(global4.c.x, global0.c.x, var_2, true))), global4.a, false);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_3 {
    var var_0 = global3.zz;
    var var_1 = !global4.c.x;
    var_1 = any(!global0.b.a.a) | all(func_3(false, _wgslsmith_f_op_f32(-531f * _wgslsmith_f_op_f32(global0.b.d.x - -661f)), vec4<f32>(global0.b.d.x, global0.b.c.x, _wgslsmith_f_op_f32(floor(global0.b.d.x)), -134f)));
    global4 = global0.b.a;
    var var_2 = Struct_3(~_wgslsmith_div_vec4_u32((global0.a << (global0.a % vec4<u32>(32u))) >> (countOneBits(global0.a) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(abs(global0.a), ~global0.a)), global0.b, !global0.c);
    return Struct_3(reverseBits(global0.a), global0.b, select(!vec3<bool>(true, true, arg_0.x), select(vec3<bool>(!arg_0.x, global0.c.x, true), func_3(global4.a.x, _wgslsmith_f_op_f32(step(-1025f, global0.b.c.x)), _wgslsmith_f_op_vec4_f32(-var_2.b.c)), false), !vec3<bool>(!arg_0.x, !global0.b.a.a.x, global4.c.x)));
}

fn func_1() -> Struct_1 {
    var var_0 = global0.b.a;
    var var_1 = global0.b.c.x < global0.b.d.x;
    let var_2 = func_2(!global4.c, global0.b.a, vec2<f32>(global0.b.d.x, -183f));
    global1 = array<i32, 30>();
    let var_3 = _wgslsmith_div_u32(_wgslsmith_sub_u32(global3.x, global4.b.x), _wgslsmith_sub_u32(var_2.b.a.b.x, abs(~(u_input.b.x ^ global0.b.a.b.x))));
    return global0.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~0u;
    global4 = func_1();
    let var_1 = Struct_1(vec3<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(1u, 30u)] <= u_input.a.x, true, true)), abs(global3.x) >= ~select(89611u, 1u, false), select(all(global0.b.a.c.yz), all(!vec2<bool>(global0.c.x, global4.c.x)), func_3(true, _wgslsmith_f_op_f32(300f + global0.b.d.x), _wgslsmith_f_op_vec4_f32(global0.b.c + global0.b.c)).x)), _wgslsmith_mod_vec2_u32(~(vec2<u32>(4294967295u, 1u) & global4.b) | ~global3.zz, func_2(vec4<bool>(true, false, func_1().a.x, true), Struct_1(select(vec3<bool>(global0.b.b, global4.a.x, false), global4.a, global4.a), _wgslsmith_sub_vec2_u32(u_input.b.xz, global4.b), !vec4<bool>(global4.c.x, true, false, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b.d - global0.b.d))).a.zy), vec4<bool>(global4.a.x, !(_wgslsmith_f_op_f32(global0.b.d.x * global0.b.c.x) >= _wgslsmith_f_op_f32(global0.b.d.x + -805f)), true, (global3.x ^ firstTrailingBit(1u)) != ~global4.b.x));
    let var_2 = global0.b;
    let var_3 = Struct_2(global0.b.a, true, _wgslsmith_f_op_vec4_f32(-global0.b.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(441f + -664f), 449f)), _wgslsmith_f_op_f32(var_2.c.x + _wgslsmith_f_op_f32(round(-776f)))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -699f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-125f * 360f)))));
    global0 = func_2(select(!vec4<bool>(!global0.b.b, -2215f <= var_3.d.x, select(var_3.a.c.x, global0.b.b, global0.b.b), any(vec4<bool>(var_3.a.a.x, var_3.b, var_3.a.a.x, var_2.a.c.x))), global0.b.a.c, !global4.c), var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1813f - -441f), _wgslsmith_f_op_f32(-var_2.d.x)), var_2.d)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.d.x) - var_3.d.x)), var_3.c.x, _wgslsmith_f_op_f32(f32(-1f) * -812f), _wgslsmith_f_op_f32(min(var_3.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1678f - global0.b.c.x))))));
}

