struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(639f, -135f);

var<private> global1: vec4<bool>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<bool> {
    global1 = !select(!select(vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, true), true), select(!select(vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(false, false, false, global1.x), vec4<bool>(global1.x, false, false, true)), vec4<bool>(global0.x < 371f, any(global1.wx), true, all(vec4<bool>(global1.x, global1.x, false, global1.x))), select(select(vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(false, true, true, global1.x), vec4<bool>(false, global1.x, false, true)), !vec4<bool>(global1.x, global1.x, true, global1.x), global1.x)), true && (-u_input.c > u_input.c));
    global1 = vec4<bool>(true == (global1.x | true), true || (-u_input.c == -min(u_input.c, u_input.c)), true, any(select(global1.wxw, select(vec3<bool>(true, false, global1.x), vec3<bool>(true, global1.x, false), select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, false, global1.x), global1.zyz)), !(!vec3<bool>(true, true, global1.x)))));
    var var_0 = abs(min(i32(-1i) * -8764i, -70566i) << (countOneBits(~u_input.a) % 32u));
    global1 = !select(select(select(select(vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(false, global1.x, true, false)), vec4<bool>(true, true, false, true), !vec4<bool>(global1.x, false, false, global1.x)), !(!vec4<bool>(global1.x, true, global1.x, global1.x)), select(vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(global1.x, global1.x, false, true), !vec4<bool>(global1.x, global1.x, global1.x, global1.x))), !(!vec4<bool>(true, true, true, global1.x)), vec4<bool>(!(!global1.x), global1.x, !global1.x, global1.x));
    global1 = select(select(select(!vec4<bool>(true, false, global1.x, global1.x), vec4<bool>(true, u_input.c != 22325i, global1.x & global1.x, any(global1.xwy)), u_input.b < ~29448u), vec4<bool>(all(vec4<bool>(false, global1.x, true, global1.x)), true, true, !global1.x || true), !(u_input.b != 1u)), !vec4<bool>(any(global1.xw), true, false, any(!global1.yyy)), false);
    return !(!(!vec4<bool>(true, global0.x != -969f, global1.x, true)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global1 = !select(func_3(), !select(!vec4<bool>(global1.x, global1.x, true, global1.x), !vec4<bool>(true, global1.x, true, true), !vec4<bool>(global1.x, global1.x, global1.x, true)), -(~u_input.c) <= -32633i);
    var var_0 = _wgslsmith_f_op_f32(trunc(-1528f));
    return func_3().x;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> u32 {
    global1 = select(vec4<bool>(any(!select(vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(false, false, false, arg_1), vec4<bool>(true, false, true, true))), all(global1.zyy), !arg_1, false), select(vec4<bool>(global1.x, any(global1.yz), arg_1, true), vec4<bool>(_wgslsmith_mod_i32(arg_0.d.x, arg_0.d.x) > abs(u_input.c), !(global1.x & true), !(!arg_1), true), vec4<bool>(!(!global1.x), select(true, !arg_1, true & global1.x), all(select(global1.yxx, global1.yyx, arg_1)), true)), select(!select(vec4<bool>(arg_1, false, global1.x, arg_1), !vec4<bool>(false, false, arg_1, arg_1), arg_0.a != global0.x), vec4<bool>(true, !func_2(arg_0, arg_0), !select(global1.x, true, global1.x), true), !global1.x));
    let var_0 = Struct_2(arg_0, arg_0, arg_0, vec3<u32>(_wgslsmith_mult_u32(~7941u, firstTrailingBit(54299u)), select(arg_0.b | 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.b), vec3<u32>(12352u, arg_0.b, arg_0.b)), true), ~_wgslsmith_div_u32(u_input.a, u_input.b)) | (vec3<u32>(1u, u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_0.b), vec2<u32>(arg_0.b, u_input.b))) << (vec3<u32>(~0u, ~19549u, ~arg_0.b) % vec3<u32>(32u))), arg_0);
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -519f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 1800f))))), _wgslsmith_f_op_vec2_f32(select(arg_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(289f, var_0.a.a), var_0.c.c))), true)));
    let var_1 = vec4<i32>(1i, -4144i & -_wgslsmith_div_i32(var_0.b.d.x, arg_0.d.x), u_input.c, _wgslsmith_mult_i32(~(-29646i), _wgslsmith_div_i32(arg_0.d.x, 1i)) | (var_0.e.d.x >> (var_0.b.b % 32u))) << (~_wgslsmith_div_vec4_u32(~firstTrailingBit(vec4<u32>(var_0.c.b, 3407u, 0u, 4294967295u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, u_input.b, 114034u, arg_0.b), vec4<u32>(u_input.b, 4660u, 1u, arg_0.b))) % vec4<u32>(32u));
    let var_2 = Struct_3(abs(~vec4<u32>(select(arg_0.b, var_0.e.b, true), var_0.a.b, countOneBits(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(21829u, u_input.a, u_input.b), var_0.d))), arg_0.c);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<bool>((1060u & u_input.a) == (~(u_input.a >> (28416u % 32u)) ^ ~4294967295u), firstTrailingBit(~max(1u, u_input.b)) > 15725u, select(~func_1(Struct_1(709f, 19075u, vec2<f32>(796f, -1005f), vec2<i32>(-24480i, -2147483647i)), true) != abs(countOneBits(u_input.b)), global1.x, func_3().x), global1.x);
    var var_0 = abs(vec3<i32>(~(~0i), -1i, select(2147483647i, max(u_input.c, u_input.c) << (4294967295u % 32u), func_3().x)));
    let var_1 = countOneBits(countOneBits(~(~u_input.b))) & _wgslsmith_mult_u32(firstLeadingBit(~(~u_input.a)), 4294967295u);
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-232f, global0.x)))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-466f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -268f), _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, 612f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -2870f) + vec2<f32>(-1121f, -1215f)))))));
    let var_2 = max(select(vec4<i32>(var_0.x, -2147483647i, -30812i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_0.x, u_input.c, u_input.c) >> (vec4<u32>(u_input.a, var_1, u_input.b, 1u) % vec4<u32>(32u)), vec4<i32>(14207i, 19261i, var_0.x, -2147483647i))), vec4<i32>(31139i, select(u_input.c, u_input.c, global1.x), u_input.c, 0i), ~firstTrailingBit(1u) < ~(~u_input.b)), vec4<i32>(-29278i, u_input.c, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 20770i, var_0.x, 26323i), -vec4<i32>(var_0.x, 44825i, 47066i, 0i)), u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(global0.x, global0.x)), !global1.x)))));
}

