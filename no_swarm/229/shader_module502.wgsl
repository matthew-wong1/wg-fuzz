struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 1u;

var<private> global2: vec3<f32> = vec3<f32>(591f, 1231f, -982f);

var<private> global3: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = -24710i;
    let var_1 = vec2<u32>(1u, 1u >> ((~16718u | u_input.b.x) % 32u));
    global1 = abs(arg_0.a.x);
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1382f, -820f, global2.x), vec3<f32>(809f, 629f, 1830f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1468f, 1298f, -537f), vec3<f32>(1207f, global2.x, global2.x))))))));
    global3 = _wgslsmith_dot_vec4_i32(~(~(-_wgslsmith_mod_vec4_i32(vec4<i32>(var_0, var_0, var_0, var_0), vec4<i32>(var_0, var_0, 18370i, -10199i)))), -(~vec4<i32>(countOneBits(var_0), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_0, var_0), vec3<i32>(-1582i, 65197i, -25204i)), -18238i, var_0)));
    return abs(~vec2<u32>(1u, _wgslsmith_sub_u32(13462u, arg_0.a.x) ^ (u_input.b.x >> (global0.a.x % 32u))));
}

fn func_3() -> bool {
    let var_0 = -(~(~_wgslsmith_clamp_i32(abs(-63545i), 2147483647i, reverseBits(0i))));
    let var_1 = u_input.b.x;
    var var_2 = select(!select(!select(vec3<bool>(false, false, true), vec3<bool>(false, global0.c, false), vec3<bool>(global0.b.x, true, false)), !(!vec3<bool>(true, true, global0.c)), true), vec3<bool>(~1u >= (global0.a.x ^ var_1), true, !(~var_1 <= ~14215u)), !global0.d.x);
    var var_3 = _wgslsmith_f_op_f32(1119f + -561f);
    var var_4 = vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(var_0, var_0), vec2<i32>(var_0, var_0)), ~(-vec2<i32>(7998i, 1i))), 2147483647i, ~0i) & abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(max(var_0, var_0), 2147483647i, var_0), _wgslsmith_clamp_vec3_i32(-vec3<i32>(var_0, var_0, var_0), vec3<i32>(var_0, -1i, var_0), vec3<i32>(-29032i, var_0, var_0) >> (vec3<u32>(global0.a.x, global0.a.x, 4294967295u) % vec3<u32>(32u))), vec3<i32>(var_0 << (var_1 % 32u), var_0, 1i)));
    return any(!vec3<bool>(global0.d.x, var_2.x, true | all(vec4<bool>(global0.d.x, global0.d.x, global0.d.x, true))));
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + 488f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1223f, -363f, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1464f, var_0.x, var_0.x)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0.x, var_0.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-158f, global2.x, -333f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1083f, var_0.x, -606f))))));
    var var_1 = Struct_1(u_input.b.yz >> (vec2<u32>(_wgslsmith_sub_u32(arg_0 | arg_0, ~u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.b.wy, vec2<u32>(u_input.a, 87857u))) % vec2<u32>(32u)), vec2<bool>(!(!global0.c), (select(-1i, 2466i, global0.c) & _wgslsmith_mod_i32(-1i, -1i)) <= -firstTrailingBit(-52277i)), global0.b.x, vec2<bool>(global0.c, -498f != _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.x, global2.x), var_0.x, true))));
    let var_2 = vec4<bool>((38212u << (0u % 32u)) >= u_input.a, true || !select(false, var_1.b.x != true, global0.d.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global2.x)))), false);
    var var_3 = Struct_1(vec2<u32>(85043u, 1u), var_2.zx, true, select(var_1.b, !var_2.xy, vec2<bool>(func_3(), true)));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -998f, _wgslsmith_f_op_f32(-847f + global2.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, 799f, -1047f), vec3<f32>(-317f, global2.x, global2.x)))))));
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-232f))));
    global3 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(Struct_1(~(~vec2<u32>(51044u, global0.a.x)), select(vec2<bool>(true, true), vec2<bool>(false, false), global0.c), !global0.d.x, vec2<bool>(false, false))), firstTrailingBit(-func_2(global0.a.x)), abs(vec3<u32>(global0.a.x, _wgslsmith_clamp_u32(u_input.a, ~63586u, ~45085u), _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a & 4294967295u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, global2.x, -249f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-172f, -1001f, global2.x, var_0) - vec4<f32>(1142f, 1052f, -1165f, global2.x)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-188f, global2.x, global2.x, global2.x))))));
}

