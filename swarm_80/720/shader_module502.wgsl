struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: f32,
    e: vec3<i32>,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
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

var<private> global0: Struct_3;

var<private> global1: vec3<i32> = vec3<i32>(1i, 2147483647i, 1i);

var<private> global2: array<vec2<bool>, 28>;

var<private> global3: array<vec3<u32>, 23> = array<vec3<u32>, 23>(vec3<u32>(42363u, 1u, 0u), vec3<u32>(33805u, 10067u, 14315u), vec3<u32>(18099u, 0u, 65563u), vec3<u32>(1u, 1u, 0u), vec3<u32>(4294967295u, 40933u, 1u), vec3<u32>(4294967295u, 19542u, 97909u), vec3<u32>(4294967295u, 6163u, 1u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(15554u, 4294967295u, 18717u), vec3<u32>(0u, 4294967295u, 4944u), vec3<u32>(55355u, 1u, 4294967295u), vec3<u32>(1u, 24089u, 13037u), vec3<u32>(27508u, 0u, 39034u), vec3<u32>(1u, 11747u, 22423u), vec3<u32>(8395u, 29490u, 50265u), vec3<u32>(4294967295u, 4294967295u, 30446u), vec3<u32>(34347u, 16471u, 35049u), vec3<u32>(38311u, 0u, 1u), vec3<u32>(21269u, 0u, 5105u), vec3<u32>(27109u, 4294967295u, 56115u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(0u, 0u, 0u), vec3<u32>(33915u, 29573u, 1u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = max(global1.zx, vec2<i32>(arg_1.a, _wgslsmith_mod_i32(firstTrailingBit(max(37451i, -55554i)), 2058i)));
    var var_1 = Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~15637u, arg_0, global0.a | 4294967295u, 0u), vec4<u32>(_wgslsmith_dot_vec2_u32(global0.d.yy, vec2<u32>(global0.a, 0u)), 4294967295u, abs(42676u), arg_0)), _wgslsmith_mult_u32(arg_0, 1u), ~(~global0.d.x)), global0.b, global0.d.yx);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-642f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(120f + -962f)))))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(405f + 142f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1018f + _wgslsmith_f_op_f32(f32(-1f) * -1147f))));
    global0 = Struct_3(15190u, all(select(vec4<bool>(true, true, any(vec3<bool>(false, true, var_1.b)), true), vec4<bool>(false, var_1.b, global0.b, var_1.b), vec4<bool>(true || var_1.b, var_1.b, arg_0 >= u_input.d.x, true))), Struct_2(abs(select(1i, 0i, false))), global0.d & select(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(var_1.a, vec3<u32>(55152u, 4294967295u, arg_0), vec3<u32>(var_1.c.x, 7362u, var_1.c.x)), select(var_1.a, vec3<u32>(42419u, u_input.d.x, u_input.d.x), global0.b)), ~(~var_1.a), all(global2[_wgslsmith_index_u32(4294967295u, 28u)])));
    return vec2<u32>(19372u, firstLeadingBit(global0.d.x));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: u32) -> f32 {
    var var_0 = Struct_4(Struct_2(select(arg_0.a, 1i, select(global0.b, any(global2[_wgslsmith_index_u32(1u, 28u)]), false))), ~u_input.d.x, Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 45155u, 10296u), vec3<u32>(16270u, u_input.d.x, arg_2)) << (max(vec3<u32>(17768u, arg_2, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(25951u, u_input.d.x, 52310u), vec3<u32>(23739u, global0.a, 4354u))) % vec3<u32>(32u)), global0.b, select(func_3(31764u, arg_0), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.d.x, arg_2), ~vec2<u32>(4294967295u, 2583u)), select(!vec2<bool>(true, global0.b), vec2<bool>(global0.b, false), global0.b))), arg_1.x, abs(vec3<i32>(reverseBits(global0.c.a), 0i, 29108i)));
    var var_1 = ~select(~vec2<u32>(9900u, _wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, u_input.d.x)), abs((u_input.d & vec2<u32>(65510u, 39701u)) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(arg_2, 50205u), vec2<u32>(u_input.d.x, 1u))), vec2<bool>(select(!global0.b, u_input.e.x == var_0.e.x, global0.b), var_0.c.b));
    let var_2 = Struct_5(_wgslsmith_add_vec3_i32(reverseBits(var_0.e), u_input.b));
    global2 = array<vec2<bool>, 28>();
    global3 = array<vec3<u32>, 23>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1333f)));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global0.c, vec4<f32>(-302f, -2150f, -2439f, -1533f), 16046u))), _wgslsmith_f_op_f32(min(-1246f, -1477f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(244f, -1243f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(605f, -752f) + vec2<f32>(2173f, -1297f)))))))));
    let var_1 = firstTrailingBit(min(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.d.x, u_input.d.x), global0.d.yx), firstTrailingBit(_wgslsmith_add_vec2_u32(max(u_input.d, vec2<u32>(u_input.d.x, global0.a)), u_input.d))));
    let var_2 = var_0.x;
    global1 = _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.c.x, select(_wgslsmith_mult_i32(countOneBits(-68577i), 2147483647i << (u_input.d.x % 32u)), -1i, !all(vec3<bool>(false, global0.b, global0.b)))), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(u_input.e, vec3<i32>(0i, -1i, 2147483647i)), vec3<i32>(max(-1601i, 7319i), -2147483647i, max(-2147483647i, 0i))) >> (reverseBits(abs(~global3[_wgslsmith_index_u32(var_1.x, 23u)])) % vec3<u32>(32u)));
    var var_3 = u_input.d.x;
    return Struct_2(-6456i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!vec2<bool>(!global0.b, any(!global2[_wgslsmith_index_u32(global0.a, 28u)])));
    var var_1 = ~abs(~vec3<u32>(0u ^ global0.d.x, ~0u, _wgslsmith_clamp_u32(global0.a, u_input.d.x, 74270u)));
    global3 = array<vec3<u32>, 23>();
    var var_2 = func_1();
    global2 = array<vec2<bool>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.d.x, ~firstTrailingBit(4294967295u), abs(_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(34738u, global0.a))), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, 3647u, 118474u, 1u), max(vec4<u32>(0u, 0u, 37370u, 8775u), vec4<u32>(42813u, var_1.x, 3654u, 0u))), abs(_wgslsmith_clamp_u32(u_input.d.x, var_1.x, 85081u)))));
}

