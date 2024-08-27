struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(-371f, -287f, 716f, -314f, 1232f, -152f, -324f, -223f, -613f);

var<private> global1: f32;

var<private> global2: vec3<bool>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: f32) -> u32 {
    var var_0 = Struct_3(1287f, Struct_2(arg_1, u_input.c, arg_0), 342f);
    global2 = vec3<bool>(!(var_0.b.b <= reverseBits(abs(u_input.c))), true, ~(~_wgslsmith_mult_u32(u_input.d.x, 34482u)) != min(1u, 9861u));
    var var_1 = reverseBits(max(_wgslsmith_mod_vec2_u32(~u_input.d.ww ^ ~vec2<u32>(var_0.b.a, 1u), u_input.b.yz), _wgslsmith_mult_vec2_u32(reverseBits(_wgslsmith_mult_vec2_u32(u_input.d.zw, u_input.e)), _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.b.a, var_0.b.a), vec2<u32>(var_0.b.a, var_0.b.a), vec2<u32>(u_input.a, arg_1)), u_input.d.xz))));
    let var_2 = var_0.b.c.a;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_0.c)))), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstTrailingBit(var_0.b.a), 9u)] * 2204f)));
    return 1u;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<bool>, arg_3: vec4<u32>) -> vec3<bool> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-862f + global0[_wgslsmith_index_u32(15740u, 9u)]), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(42628u, 9u)])), true)), _wgslsmith_div_f32(-1067f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), Struct_2(13573u, u_input.c, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_3.x, 9u)], global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(39640u, 9u)], 159f), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(arg_0, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(arg_3.x, 9u)])) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1541f, global0[_wgslsmith_index_u32(arg_3.x, 9u)], global0[_wgslsmith_index_u32(arg_3.x, 9u)], 1526f), vec4<f32>(555f, global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(23642u, 9u)], -449f)))))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(26516u | arg_3.x, ~arg_3.x) | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 17285u, 43479u, u_input.e.x), _wgslsmith_sub_vec4_u32(u_input.b, u_input.d)), 9u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(70865u, arg_0, ~1u), 9u)] - global0[_wgslsmith_index_u32(~(71995u >> (1u % 32u)), 9u)])));
    let var_1 = all(arg_2);
    global2 = !(!vec3<bool>(true, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.a, 0u, u_input.a, u_input.b.x), vec4<u32>(var_0.b.a, 55854u, 1u, 18328u)) != _wgslsmith_div_u32(39815u, arg_0), var_1));
    let var_2 = _wgslsmith_add_u32(_wgslsmith_div_u32(func_3(var_0.b.c, arg_3.x, var_0.b.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + global0[_wgslsmith_index_u32(15872u, 9u)]))), _wgslsmith_dot_vec4_u32(vec4<u32>(~65908u, firstLeadingBit(27934u), ~4294967295u, ~0u), arg_3)), u_input.d.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(var_0.b.c.a - var_0.b.c.a);
    return select(!select(arg_2, vec3<bool>(true, !global2.x, true), !select(arg_2, vec3<bool>(false, var_1, arg_1.x), true)), vec3<bool>(arg_2.x, arg_2.x, arg_1.x), select(arg_1, arg_1, select(select(select(arg_2, vec3<bool>(false, var_1, var_1), true), arg_1, false), arg_2, select(arg_2, !arg_2, false))));
}

fn func_1() -> vec3<u32> {
    var var_0 = vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(max(u_input.d.ww, vec2<u32>(u_input.e.x, 1u)), select(u_input.d.ww, u_input.e, global2.x))), ~(~(~67436u)), 1u, u_input.d.x) ^ u_input.d;
    global0 = array<f32, 9>();
    let var_1 = max(select(1u, abs(reverseBits(u_input.b.x)), global2.x), u_input.b.x);
    var var_2 = Struct_2(_wgslsmith_mult_u32(var_0.x, _wgslsmith_mod_u32(max(_wgslsmith_div_u32(52630u, u_input.b.x), max(4294967295u, 4294967295u)), u_input.b.x)), u_input.c, Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 9u)], -1556f, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(firstLeadingBit(var_1), 9u)])), global0[_wgslsmith_index_u32(var_1, 9u)])));
    global2 = select(select(func_2(1u, select(vec3<bool>(false, global2.x, global2.x), !vec3<bool>(global2.x, false, global2.x), false), select(vec3<bool>(true, global2.x, global2.x), select(vec3<bool>(true, false, global2.x), vec3<bool>(global2.x, global2.x, true), vec3<bool>(false, false, global2.x)), global2.x), u_input.b), vec3<bool>(true, true | any(vec2<bool>(global2.x, global2.x)), global2.x), global2.x), !vec3<bool>(global2.x, global2.x, !global2.x), vec3<bool>(any(vec3<bool>(true, global2.x || global2.x, !global2.x)), (_wgslsmith_f_op_f32(-var_2.c.a.x) > _wgslsmith_f_op_f32(-2123f + -162f)) | any(select(vec3<bool>(true, false, false), vec3<bool>(false, global2.x, true), true)), true && global2.x));
    return vec3<u32>(~u_input.a, func_3(var_2.c, firstLeadingBit(1u), _wgslsmith_f_op_f32(max(-304f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(1u, 9u)])) - _wgslsmith_f_op_f32(-var_2.c.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1203f)), _wgslsmith_div_u32(1u, abs(_wgslsmith_dot_vec2_u32(u_input.d.yy & var_0.yz, var_0.zz))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.xzz & abs(func_1());
    var var_1 = u_input.d.wxx;
    var var_2 = Struct_2(_wgslsmith_div_u32(4294967295u, var_1.x), max(1i, max(-2490i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, -9421i), vec2<i32>(2147483647i, u_input.c)), abs(vec2<i32>(2147483647i, -7455i))))), Struct_1(vec4<f32>(-192f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-485f, global0[_wgslsmith_index_u32(u_input.b.x, 9u)])) - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 9u)])), 554f)));
    global1 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(49679u, 9u)]);
    let var_3 = Struct_2(~(~(~var_0.x)), firstLeadingBit(max(var_2.b, _wgslsmith_dot_vec2_i32(select(vec2<i32>(0i, -8348i), vec2<i32>(-2147483647i, var_2.b), global2.x), -vec2<i32>(-54395i, -1i)))), Struct_1(_wgslsmith_f_op_vec4_f32(-var_2.c.a)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(firstTrailingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(u_input.c, var_2.b, -21285i, 1i) & vec4<i32>(u_input.c, u_input.c, var_2.b, u_input.c)))));
}

