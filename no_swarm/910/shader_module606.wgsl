struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> vec3<i32> {
    global0 = ~(~(~(~_wgslsmith_mult_vec2_u32(u_input.a.xx, vec2<u32>(global0.x, u_input.a.x)))));
    global0 = vec2<u32>(~u_input.a.x, global0.x);
    global0 = _wgslsmith_mult_vec2_u32(u_input.a.wx, vec2<u32>(u_input.a.x, global0.x));
    let var_0 = vec2<bool>(false, arg_1.a.x);
    var var_1 = vec4<f32>(arg_0.x, arg_1.b.x, arg_1.b.x, arg_1.b.x);
    return _wgslsmith_add_vec3_i32(~(~select(vec3<i32>(u_input.c, 17538i, 16914i) & vec3<i32>(u_input.c, -14238i, -20715i), -vec3<i32>(30250i, 16980i, 1i), arg_1.a.x)), countOneBits(vec3<i32>(u_input.b.x, -u_input.c, -1789i)));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: i32, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = func_3(vec3<f32>(arg_3.x, 808f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_3.x)), arg_3.x, _wgslsmith_f_op_f32(arg_3.x - -1000f))))));
    let var_1 = 70026u;
    var var_2 = Struct_1(select(vec2<bool>(true, true), vec2<bool>((var_1 >> (arg_1 % 32u)) > arg_1, !any(vec4<bool>(false, false, true, true))), vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 681f, arg_3.x)) + vec3<f32>(-152f, arg_3.x, arg_0.x)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(830f, arg_0.x, 431f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0.x, arg_0.x)), any(vec4<bool>(false, true, true, false)))), vec3<f32>(-1000f, arg_0.x, _wgslsmith_f_op_f32(min(arg_3.x, arg_3.x))))));
    let var_3 = -609f;
    var_2 = Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_2.b, vec3<f32>(-647f, -1000f, -213f), all(!vec4<bool>(true, var_2.a.x, var_2.a.x, false))))));
    return Struct_1(vec2<bool>(all(vec3<bool>(true, true, true)), var_2.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.b)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>) -> Struct_1 {
    global0 = _wgslsmith_mod_vec2_u32(u_input.a.wy, u_input.a.wy ^ u_input.a.zy);
    var var_0 = _wgslsmith_add_i32(u_input.c, _wgslsmith_mod_i32(-((-2147483647i << (u_input.a.x % 32u)) & -1i), _wgslsmith_mult_i32(-_wgslsmith_clamp_i32(1i, 2147483647i, u_input.c), -2147483647i)));
    global0 = vec2<u32>(min(~2058u, global0.x), _wgslsmith_add_u32(~reverseBits(~1806u), global0.x));
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.zy, vec2<f32>(arg_0.x, 290f))) * vec2<f32>(arg_0.x, -152f))), ~(reverseBits(20259u) ^ firstTrailingBit(arg_1.x)), 2147483647i, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -197f), vec2<f32>(arg_0.x, arg_0.x), any(vec2<bool>(true, true)))) + vec2<f32>(-1195f, arg_0.x)))));
    var_0 = -abs(1i);
    return func_2(var_1.b.yy, u_input.a.x, u_input.c, var_1.b.yy);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> bool {
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(arg_0.b.x, arg_3.x)), 942f)), vec2<f32>(arg_1.b.x, -2326f))), min(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(4294967295u, global0.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(global0.x, global0.x), u_input.a.zw) | u_input.a.yw), u_input.a.x), u_input.b.x, arg_3);
    var var_1 = vec2<i32>(69056i, abs(u_input.b.x));
    let var_2 = global0.x;
    global0 = u_input.a.xw;
    var var_3 = arg_0;
    return any(var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_mod_vec2_u32(u_input.a.zw >> (u_input.a.xy % vec2<u32>(32u)), max(vec2<u32>(15530u, 1u), countOneBits(vec2<u32>(u_input.a.x, global0.x))));
    var var_0 = Struct_1(!vec2<bool>(any(vec3<bool>(true, true, true)), func_4(func_1(vec3<f32>(-228f, 774f, -1000f), u_input.a.xwx), Struct_1(vec2<bool>(true, true), vec3<f32>(2063f, 296f, 472f)), func_2(vec2<f32>(1000f, 1096f), global0.x, u_input.b.x, vec2<f32>(562f, 1038f)), vec2<f32>(-758f, 218f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(560f)))), func_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-513f, 467f), vec2<f32>(1000f, -1054f))), _wgslsmith_mult_u32(0u, u_input.a.x), _wgslsmith_add_i32(u_input.b.x, u_input.c), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(967f, 949f), vec2<f32>(-283f, 773f)))).b.x, _wgslsmith_f_op_f32(abs(465f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1341f, -1304f, 577f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1757f, 1152f, 782f) * vec3<f32>(-777f, -829f, 2206f))))))));
    var var_1 = !(!func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, 318f, -602f)), ~(~u_input.a.zwx)).a.x);
    let var_2 = var_0.b.x;
    var_0 = Struct_1(vec2<bool>(!(!any(vec2<bool>(false, var_0.a.x))), var_0.a.x), _wgslsmith_f_op_vec3_f32(-var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(round(var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b.x, -454f))), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1259f)), _wgslsmith_mod_vec4_i32(-select(vec4<i32>(u_input.b.x, 22155i, -1i, -2147483647i), vec4<i32>(2061i, u_input.c, u_input.c, 25042i), true), vec4<i32>(-_wgslsmith_sub_i32(3202i, u_input.b.x), u_input.b.x, reverseBits(~16640i), _wgslsmith_dot_vec2_i32(u_input.b, min(vec2<i32>(u_input.b.x, u_input.c), u_input.b)))), var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b.x), 377f))));
}

