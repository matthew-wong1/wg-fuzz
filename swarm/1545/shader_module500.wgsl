struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-1i, 0i, -14588i), vec3<i32>(2147483647i, i32(-2147483648), 20951i), vec3<u32>(0u, 4294967295u, 109972u), false, vec4<bool>(true, false, false, false));

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<i32>(24258i, 1247i, -5498i), vec3<i32>(-80214i, 11043i, i32(-2147483648)), vec3<u32>(0u, 0u, 59224u), false, vec4<bool>(false, true, true, false)), Struct_1(vec3<i32>(2147483647i, 0i, -53432i), vec3<i32>(-1i, i32(-2147483648), -27009i), vec3<u32>(22543u, 60058u, 47547u), false, vec4<bool>(true, true, false, true)));

var<private> global2: u32 = 0u;

var<private> global3: f32 = -237f;

var<private> global4: array<Struct_1, 32>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = arg_3.d || ((global0.b.x ^ arg_0) < _wgslsmith_sub_i32(global0.a.x, _wgslsmith_dot_vec3_i32(abs(u_input.a), u_input.a)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1144f + -1000f))) * 964f), -1000f, _wgslsmith_f_op_f32(select(146f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1791f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -216f))), arg_3.d)), -519f);
    global2 = ~0u;
    global0 = global1[_wgslsmith_index_u32(arg_2 & ~arg_1.x, 2u)];
    var var_2 = Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a, -global0.b), -69718i << (arg_2 % 32u), u_input.a.x << (select(15472u, 42644u, arg_3.e.x) % 32u)), arg_3.b), min(abs(~u_input.a), vec3<i32>(32204i, _wgslsmith_mod_i32(0i, u_input.c), global0.b.x)), u_input.b.zyx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(round(-465f)))) >= _wgslsmith_f_op_f32(step(-1524f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 1615f)))), arg_3.e);
    return global0.c;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> vec3<i32> {
    var var_0 = ~((func_3(abs(arg_1.a.x), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 1u), ~1u, arg_0) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.c.x, global0.c.x, u_input.b.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 70345u, 4294967295u), arg_0.c, vec3<u32>(1u, u_input.b.x, arg_0.c.x))) % vec3<u32>(32u))) & u_input.b.xxy);
    var var_1 = (~u_input.b.x == firstLeadingBit(38665u)) && all(arg_1.e.xw);
    var var_2 = Struct_1(min(abs(u_input.a), vec3<i32>(~(-431i) ^ (0i & arg_1.a.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(12276i, -1i), vec2<i32>(2147483647i, 17921i)), max(_wgslsmith_dot_vec3_i32(arg_1.a, vec3<i32>(global0.a.x, global0.b.x, global0.b.x)), -u_input.a.x))), ~vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, abs(1i)), abs(_wgslsmith_sub_i32(73300i, global0.a.x)), firstTrailingBit(u_input.a.x)), abs(~(~(~arg_0.c))), all(select(arg_1.e.wx, vec2<bool>(all(vec4<bool>(false, true, true, arg_0.d)), arg_0.d), !vec2<bool>(arg_0.d, true))), !select(arg_0.e, !(!global0.e), global0.e.x));
    var var_3 = global1[_wgslsmith_index_u32(58761u, 2u)];
    var var_4 = arg_0;
    return arg_0.b;
}

fn func_1() -> vec2<u32> {
    global0 = Struct_1(-select(~(~vec3<i32>(1i, u_input.c, 0i)), _wgslsmith_add_vec3_i32(func_2(global1[_wgslsmith_index_u32(29279u, 2u)], Struct_1(vec3<i32>(-27034i, -41005i, u_input.a.x), u_input.a, vec3<u32>(62095u, 4294967295u, 89410u), global0.e.x, global0.e), vec2<u32>(1u, u_input.b.x)), vec3<i32>(global0.a.x, 2147483647i, u_input.c)), !(u_input.a.x < global0.a.x)), global0.b, ~vec3<u32>(0u, u_input.b.x, ~_wgslsmith_mult_u32(u_input.b.x, global0.c.x)), global0.d != true, select(select(!(!vec4<bool>(false, global0.d, false, global0.d)), global0.e, vec4<bool>(global0.e.x, global0.e.x, false, !global0.d)), select(global0.e, vec4<bool>(global0.e.x && true, false, select(true, true, global0.e.x), global0.e.x), any(!vec4<bool>(false, true, global0.d, global0.d))), !select(vec4<bool>(global0.d, global0.d, false, false), global0.e, !global0.e)));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -289f)))), _wgslsmith_f_op_f32(f32(-1f) * -912f));
    let var_1 = 10286i < _wgslsmith_div_i32(_wgslsmith_mod_i32(-4008i, _wgslsmith_dot_vec2_i32(u_input.a.yx, global0.b.yz) ^ (u_input.a.x << (u_input.b.x % 32u))), u_input.c);
    global1 = array<Struct_1, 2>();
    var var_2 = global1[_wgslsmith_index_u32(0u, 2u)];
    return select(max(~u_input.b.wy, ~(~(~u_input.b.wz))), reverseBits(vec2<u32>(u_input.b.x, 68801u)), select(!(_wgslsmith_f_op_f32(-var_0.x) >= _wgslsmith_f_op_f32(-var_0.x)), global0.e.x, select(global0.e.x, var_1, var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(38494u, 32u)];
    let var_1 = vec2<i32>(1i, 2147483647i);
    let var_2 = global4[_wgslsmith_index_u32(15961u, 32u)];
    var var_3 = max(~(func_1() >> (min(~vec2<u32>(67049u, 115248u), ~vec2<u32>(var_2.c.x, global0.c.x)) % vec2<u32>(32u))), var_0.c.yx);
    var_0 = Struct_1(vec3<i32>(~func_2(Struct_1(vec3<i32>(var_2.b.x, var_0.a.x, var_0.b.x), var_2.a, var_0.c, true, vec4<bool>(false, global0.d, var_0.e.x, true)), global4[_wgslsmith_index_u32(u_input.b.x, 32u)], var_2.c.yx << (u_input.b.yw % vec2<u32>(32u))).x, 1i, ~(-_wgslsmith_div_i32(-1i, 1i))), var_2.a, ~select(firstLeadingBit(global0.c), ~u_input.b.wyx, !(!var_0.e.ywx)), global0.e.x, !var_0.e);
    var var_4 = ~((firstLeadingBit(select(vec3<i32>(var_1.x, 46601i, global0.a.x), var_0.b, var_2.e.x)) | vec3<i32>(var_1.x >> (1u % 32u), -109668i, reverseBits(1285i))) >> (u_input.b.xwx % vec3<u32>(32u)));
    var var_5 = u_input.b.zw;
    global2 = global0.c.x & 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~67083u), var_0.a.x, abs(vec2<i32>(1i, 11655i)) >> (vec2<u32>(0u, firstTrailingBit(global0.c.x) | select(global0.c.x, var_0.c.x, var_2.e.x)) % vec2<u32>(32u)));
}

