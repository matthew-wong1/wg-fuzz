struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(9121u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 46078u), vec2<u32>(105807u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(30130u, 4294967295u), vec2<u32>(57882u, 33452u), vec2<u32>(88997u, 4294967295u), vec2<u32>(28363u, 1u), vec2<u32>(1u, 12267u), vec2<u32>(0u, 4294967295u), vec2<u32>(134760u, 69506u), vec2<u32>(0u, 4294967295u), vec2<u32>(17516u, 20634u));

var<private> global1: array<vec3<f32>, 22>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>) -> i32 {
    return _wgslsmith_mult_i32(~(~_wgslsmith_mod_i32(u_input.c, countOneBits(-24799i))), countOneBits(reverseBits(~select(u_input.c, u_input.c, true))));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_2(countOneBits(vec4<u32>(20288u, ~(arg_0.c.a.x ^ 0u), 4294967295u, max(arg_1, arg_1) & reverseBits(arg_1))), select(vec4<bool>(all(!vec4<bool>(true, arg_3, false, false)), false, u_input.c == u_input.c, all(select(arg_2.b.yyy, vec3<bool>(true, false, true), false))), vec4<bool>(any(!vec4<bool>(false, true, true, arg_3)), any(select(vec3<bool>(arg_3, arg_0.a.b.x, arg_0.a.b.x), vec3<bool>(false, false, arg_0.a.b.x), vec3<bool>(arg_2.b.x, arg_0.a.b.x, true))), !arg_2.b.x != false, arg_3), arg_0.a.b), reverseBits(4294967295u), Struct_1(arg_2.e.a, global0[_wgslsmith_index_u32(~arg_0.a.d.b.x, 14u)]), Struct_1(~(reverseBits(arg_2.d.a) << (_wgslsmith_add_vec4_u32(vec4<u32>(18520u, 0u, 1u, arg_2.a.x), arg_0.c.a) % vec4<u32>(32u))), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 4444u), vec2<u32>(5603u, 58303u)) ^ vec2<u32>(1u, ~arg_2.e.b.x)));
    global0 = array<vec2<u32>, 14>();
    global0 = array<vec2<u32>, 14>();
    global1 = array<vec3<f32>, 22>();
    global1 = array<vec3<f32>, 22>();
    return Struct_2(~(~(~abs(vec4<u32>(0u, 15789u, 1u, 0u)))), arg_2.b, arg_2.d.b.x, Struct_1(vec4<u32>(7832u, u_input.a.x, _wgslsmith_mod_u32(32108u, _wgslsmith_add_u32(27708u, 0u)), _wgslsmith_mod_u32(arg_0.a.c, ~0u)), ~arg_0.a.a.yx), Struct_1(vec4<u32>(~arg_2.c, ~min(var_0.c, arg_2.c), 12704u, min(~arg_0.c.b.x, 0u)), ~abs(arg_0.c.a.xw)));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_add_vec2_i32(firstLeadingBit(reverseBits((vec2<i32>(u_input.c, u_input.c) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u))) >> (abs(vec2<u32>(1u, 72283u)) % vec2<u32>(32u)))), -vec2<i32>(firstLeadingBit(u_input.c), -511i));
    global0 = array<vec2<u32>, 14>();
    var var_1 = false;
    var var_2 = global0[_wgslsmith_index_u32(arg_1.d.b.x, 14u)];
    var var_3 = Struct_4(vec3<i32>(-75009i, -u_input.c, ~1i & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_0.x, 0i, 2147483647i) ^ vec4<i32>(var_0.x, -19851i, -1i, var_0.x), vec4<i32>(var_0.x, u_input.c, -103042i, u_input.c))), 1u, 2147483647i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-807f - -1000f) - _wgslsmith_f_op_f32(round(-500f))))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-932f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-851f - 2042f))))) * 860f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 32160u;
    let var_1 = -(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.c, _wgslsmith_mod_i32(-19465i, u_input.c), func_1(global1[_wgslsmith_index_u32(4294967295u, 22u)], u_input.b)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 25296i), vec2<i32>(u_input.c, 0i)), _wgslsmith_mult_i32(u_input.c, u_input.c), 0i, _wgslsmith_sub_i32(u_input.c, 2588i))) ^ u_input.c);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -360f))), _wgslsmith_f_op_f32(func_3(true, func_2(Struct_3(Struct_2(vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(true, false, true, true), u_input.b.x, Struct_1(vec4<u32>(u_input.b.x, 0u, u_input.a.x, 4294967295u), u_input.b.yz), Struct_1(vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, u_input.b.x), u_input.b.yy)), global1[_wgslsmith_index_u32(46693u, 22u)], Struct_1(vec4<u32>(u_input.a.x, 83871u, 1u, 26059u), vec2<u32>(0u, u_input.a.x))), 0u, Struct_2(vec4<u32>(0u, 1u, 6772u, u_input.b.x), vec4<bool>(true, true, true, false), u_input.b.x, Struct_1(vec4<u32>(1u, 4294967295u, u_input.a.x, 11452u), vec2<u32>(31352u, 9839u)), Struct_1(vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x))), false)))))));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(var_2.x)), var_2.x);
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_div_i32(1i, var_1), var_1);
    var var_4 = select(var_1, abs(firstLeadingBit(abs(-16648i))), false);
    var var_5 = -16070i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_1, firstTrailingBit(1i << ((1u >> (u_input.a.x % 32u)) % 32u))));
}

