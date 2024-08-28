struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
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

var<private> global0: array<vec2<i32>, 16>;

var<private> global1: vec3<u32> = vec3<u32>(73280u, 27066u, 4294967295u);

var<private> global2: Struct_3 = Struct_3(vec3<f32>(256f, -920f, 1270f), Struct_1(true, vec2<i32>(0i, i32(-2147483648))), 1i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<i32>, 16>();
    let var_0 = true;
    global2 = Struct_3(vec3<f32>(global2.a.x, -579f, -386f), global2.b, -2147483647i);
    var var_1 = _wgslsmith_f_op_f32(-477f + -852f);
    var_1 = _wgslsmith_f_op_f32(352f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-272f * global2.a.x)));
    return global2.b;
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = 16786u;
    let var_1 = arg_0;
    var var_2 = any(vec2<bool>(true, var_1.a));
    let var_3 = select(!(!vec2<bool>(true, all(vec3<bool>(arg_0.a, true, global2.b.a)))), !select(select(select(vec2<bool>(true, global2.b.a), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, var_1.a), vec2<bool>(global2.b.a, var_1.a), arg_0.a), !vec2<bool>(global2.b.a, var_1.a)), vec2<bool>(select(true, var_1.a, true), all(vec3<bool>(arg_0.a, false, global2.b.a))), var_1.a), global2.b.a);
    return var_3.x;
}

fn func_4(arg_0: f32, arg_1: vec3<u32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-341f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a.x + arg_0), _wgslsmith_f_op_f32(-983f * -340f))))));
    let var_1 = false;
    var var_2 = _wgslsmith_div_f32(-1057f, var_0);
    global1 = vec3<u32>(4294967295u, 1u, global1.x);
    let var_3 = Struct_2(~19458i);
    return ~(~min(~(vec3<u32>(0u, 20783u, u_input.a.x) & vec3<u32>(61930u, 1u, arg_1.x)), vec3<u32>(global1.x, 18250u, ~1u)));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec4<i32>) -> vec3<u32> {
    global2 = Struct_3(global2.a, func_2(), -1i);
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1 * global2.a.x), global2.a.x, func_3(Struct_1(global2.b.a, arg_2.xz)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1))))), ~u_input.a.zzx >> (u_input.a.yxz % vec3<u32>(32u)));
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_0.a, firstTrailingBit(_wgslsmith_div_i32(1i, ~global2.b.b.x))), global2.b.b.x);
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(1000f * 219f), arg_1, arg_1))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -114f), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-396f)) - _wgslsmith_f_op_f32(-arg_1)))), global2.b, _wgslsmith_dot_vec2_i32(global2.b.b, arg_2.zy) ^ _wgslsmith_dot_vec3_i32(arg_2.yyw, ~countOneBits(arg_2.wyy)));
    global2 = Struct_3(vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -536f) - global2.a.x))), 1100f), func_2(), ~(-5065i));
    return u_input.a.xwy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~min(vec2<u32>(32462u, global1.x & ~u_input.a.x), u_input.a.yx);
    var var_1 = firstTrailingBit(reverseBits(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.c, global2.c), vec3<i32>(u_input.c, global2.b.b.x, -1i)), vec3<i32>(u_input.c, 2147483647i, 25353i)))) << (min(max(u_input.a.xzy, min(~vec3<u32>(u_input.a.x, var_0.x, var_0.x), func_1(Struct_2(19837i), global2.a.x, vec4<i32>(u_input.c, 1975i, 33931i, 44675i)))), u_input.a.zyz) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, global2.a.x, 1723f, global2.a.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1206f, global2.a.x, global2.a.x, 186f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(767f, global2.a.x, 659f, global2.a.x))), func_3(Struct_1(global2.b.a, vec2<i32>(-2147483647i, var_1.x)))))))));
}

