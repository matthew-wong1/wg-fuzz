struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_3;

var<private> global2: array<i32, 11> = array<i32, 11>(1i, 39588i, 23009i, i32(-2147483648), 1i, -78i, 2147483647i, i32(-2147483648), 19799i, 0i, 0i);

var<private> global3: f32;

var<private> global4: array<vec3<i32>, 15>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_1(false, select(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(1i, global1.b.c, -1i), global1.b.b.x), global1.b.c, -2147483647i), -firstLeadingBit(global1.b.d.b), global1.b.d.a), 13027i, -u_input.c);
    var var_1 = Struct_2(global1.b.a, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, ~24789u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(24998u, 0u))), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.b), u_input.b), vec3<u32>(~76720u, u_input.b | u_input.b, 4294967295u))), 15u)], ~_wgslsmith_dot_vec2_i32(var_0.b.zz, -(~u_input.a)), Struct_1(false, var_0.b, -2147483647i, 8546i | _wgslsmith_div_i32(var_0.b.x, _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(18780u, 11u)], 16731i))));
    var var_2 = ~_wgslsmith_div_vec4_u32(abs(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 12047u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 49052u), vec4<u32>(4294967295u, 1u, 33498u, u_input.b)), vec4<u32>(u_input.b, 30595u, u_input.b, u_input.b))), ~vec4<u32>(u_input.b, u_input.b, u_input.b, 8270u) | vec4<u32>(~16051u, 53674u, 1u, u_input.b));
    var_2 = vec4<u32>(~20008u, u_input.b, _wgslsmith_dot_vec3_u32(abs(abs(vec3<u32>(1u, var_2.x, 4294967295u))) | countOneBits(var_2.wyx), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, 245u, 343u), ~vec3<u32>(var_2.x, var_2.x, 4383u))), 0u);
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(843f))), true)));
    return global1.c;
}

fn func_2(arg_0: vec2<bool>) -> Struct_4 {
    var var_0 = u_input.b;
    global1 = Struct_3(global1.a, global1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()))));
    var var_1 = true;
    var_1 = any(select(vec4<bool>(global1.a, true, arg_0.x, false), !vec4<bool>(all(vec3<bool>(global1.b.d.a, global1.a, false)), true, global1.b.d.a, all(vec4<bool>(true, false, false, global1.a))), select(!select(vec4<bool>(global1.b.d.a, arg_0.x, global1.a, true), vec4<bool>(global1.a, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), vec4<bool>(false, !global1.b.d.a, false, true), arg_0.x)));
    var var_2 = vec4<i32>(global1.b.b.x, u_input.a.x, 0i, (i32(-1i) * -2147483647i) & _wgslsmith_add_i32(_wgslsmith_mod_i32(global1.b.b.x, u_input.c), 0i));
    return Struct_4(select(reverseBits(abs(vec2<u32>(u_input.b, u_input.b))), countOneBits(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b))), true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.a.x - -532f) + 467f) * _wgslsmith_f_op_f32(max(global1.c.x, _wgslsmith_f_op_f32(global1.c.x - 562f)))))), !(!(!select(vec3<bool>(true, true, arg_0.x), vec3<bool>(true, arg_0.x, global1.b.d.a), vec3<bool>(global1.a, arg_0.x, false)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(249f, global1.b.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x - _wgslsmith_f_op_f32(global1.c.x * global1.b.a.x)))));
}

fn func_1() -> vec2<i32> {
    let var_0 = func_2(select(vec2<bool>(global1.a, true), vec2<bool>(global1.a, true), true));
    let var_1 = max(vec2<i32>(global1.b.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, global1.b.c), _wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(global1.b.b.x, u_input.a.x)))) >> (~(max(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, u_input.b)) >> (_wgslsmith_div_vec2_u32(var_0.a, var_0.a) % vec2<u32>(32u))) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(global1.b.b.x | _wgslsmith_div_i32(0i, global2[_wgslsmith_index_u32(2124u, 11u)]), global2[_wgslsmith_index_u32(var_0.a.x & _wgslsmith_div_u32(12627u, var_0.a.x), 11u)])));
    var var_2 = Struct_3(false, Struct_2(vec4<f32>(var_0.d, -1000f, var_0.b, 1168f), countOneBits(global1.b.b), -u_input.a.x >> (~max(var_0.a.x, 0u) % 32u), Struct_1(!all(var_0.c.yx), global1.b.d.b >> (~vec3<u32>(0u, var_0.a.x, 0u) % vec3<u32>(32u)), u_input.c, firstLeadingBit(global1.b.d.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global1.b.a - vec4<f32>(1093f, 952f, global1.b.a.x, var_0.b)))) - global1.c));
    var var_3 = 7842u;
    global4 = array<vec3<i32>, 15>();
    return countOneBits(~vec2<i32>(-5388i, -global2[_wgslsmith_index_u32(u_input.b, 11u)] & -35338i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(global1.b.d.b.zy, vec2<i32>(u_input.a.x, ~18583i), vec2<i32>(-global1.b.b.x >> (u_input.b % 32u), -2147483647i)), _wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(-1i) * -func_1()));
    var var_1 = ~u_input.b;
    global1 = Struct_3(global1.b.d.a, Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.c.x, global1.c.x, 712f, global1.b.a.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, -1182f, -1000f, global1.c.x))), countOneBits(vec3<i32>(1i >> (u_input.b % 32u), u_input.a.x, -28077i)), 2147483647i, global1.b.d), global1.b.a);
    var var_2 = select(vec2<bool>(global1.a, !global1.a), vec2<bool>(false, global1.a), vec2<bool>(true, any(vec2<bool>(true, any(vec4<bool>(true, true, global1.b.d.a, true))))));
    var_1 = ~reverseBits(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_i32(~vec4<i32>(global2[_wgslsmith_index_u32(0u, 11u)], -2147483647i, -26033i, global1.b.d.c) ^ -vec4<i32>(0i, u_input.a.x, global1.b.b.x, u_input.c), vec4<i32>(0i, _wgslsmith_mult_i32(26609i, u_input.a.x), var_0.x, global2[_wgslsmith_index_u32(~30589u, 11u)])), global1.c.x, max(vec3<i32>((i32(-1i) * -1i) << (u_input.b % 32u), -(-10626i >> (u_input.b % 32u)), -global1.b.c), global1.b.d.b));
}

