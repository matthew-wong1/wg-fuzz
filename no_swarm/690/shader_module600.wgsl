struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<f32>,
    d: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_1,
    d: vec3<i32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<bool>(true, false), Struct_2(-719f, Struct_1(vec2<i32>(0i, 0i), -2260i, 677u), vec3<f32>(1034f, -856f, -1161f), 0u), Struct_1(vec2<i32>(-34567i, -1i), -19926i, 1u), vec3<i32>(1i, i32(-2147483648), 37144i), 1569i);

var<private> global1: bool;

var<private> global2: array<vec3<i32>, 4> = array<vec3<i32>, 4>(vec3<i32>(25827i, -35054i, -19542i), vec3<i32>(1i, 0i, 1i), vec3<i32>(51827i, 0i, 52822i), vec3<i32>(-1i, -22115i, 61822i));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    global0 = Struct_3(global0.a, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2008f, _wgslsmith_f_op_f32(sign(global0.b.a)))) - 538f), global0.c, vec3<f32>(global0.b.c.x, _wgslsmith_f_op_f32(1364f - 1f), _wgslsmith_f_op_f32(f32(-1f) * -1327f)), u_input.c), global0.c, _wgslsmith_div_vec3_i32(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, -19865i, global0.b.b.b), global2[_wgslsmith_index_u32(arg_0.x, 4u)]) | ~vec3<i32>(-29077i, -34352i, u_input.b)), vec3<i32>(~(-1003i << (arg_0.x % 32u)), ~(-10635i), -2147483647i)), global0.e);
    global0 = Struct_3(select(select(global0.a, select(global0.a, !global0.a, global0.a.x), vec2<bool>(true, true)), !global0.a, any(vec4<bool>(4294967295u == arg_0.x, 5683i < u_input.a.x, !global0.a.x, global0.a.x))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -124f)), global0.b.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.a, global0.b.a, 788f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1153f, global0.b.c.x, 1220f) - _wgslsmith_f_op_vec3_f32(min(global0.b.c, global0.b.c)))), _wgslsmith_sub_u32(~45701u, _wgslsmith_mod_u32(7157u, _wgslsmith_dot_vec4_u32(vec4<u32>(83973u, global0.b.b.c, 4294967295u, 1u), arg_0)))), global0.b.b, -max(~vec3<i32>(u_input.d.x, global0.c.b, 6973i), vec3<i32>(u_input.d.x, global0.c.b, u_input.d.x) | _wgslsmith_clamp_vec3_i32(global0.d, vec3<i32>(global0.e, u_input.d.x, 31571i), global0.d)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(u_input.d, vec4<i32>(15896i, 30696i, -12634i, 14751i) | vec4<i32>(global0.c.a.x, -117i, -1i, 1585i)) >> (vec4<u32>(1u, ~4294967295u, 4294967295u, 85154u) % vec4<u32>(32u)), u_input.a));
    global0 = Struct_3(select(global0.a, vec2<bool>(any(!global0.a), global0.b.c.x > -2065f), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, global0.a.x), global0.a), global0.a)), global0.b, global0.b.b, -vec3<i32>(~(global0.e ^ -2147483647i), 11141i, _wgslsmith_add_i32(_wgslsmith_mult_i32(-1i, global0.c.a.x), max(1i, u_input.b))), global0.d.x);
    var var_0 = Struct_1(u_input.d.yx, 1i, u_input.c);
    let var_1 = Struct_4(Struct_1(var_0.a, _wgslsmith_sub_i32(-1i, abs(var_0.b)) ^ _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, global0.b.b.b), vec2<i32>(var_0.b, u_input.a.x) ^ vec2<i32>(var_0.b, 2147483647i)), arg_0.x), _wgslsmith_f_op_f32(-global0.b.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.b.c.x - _wgslsmith_f_op_f32(global0.b.c.x * global0.b.c.x))))));
    return var_1.a.c | 1u;
}

fn func_2() -> Struct_5 {
    global0 = Struct_3(global0.a, global0.b, global0.b.b, _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(global2[_wgslsmith_index_u32(func_3(vec4<u32>(6241u, global0.c.c, 65709u, 1u)), 4u)] << (_wgslsmith_clamp_vec3_u32(vec3<u32>(2624u, global0.c.c, 1u), vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(1u, 47989u, global0.b.d)) % vec3<u32>(32u)), vec3<i32>(countOneBits(-8226i), ~u_input.a.x, 14908i | u_input.b), reverseBits(~global0.d)), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(global0.c.b, 18404i), firstLeadingBit(-2147483647i), _wgslsmith_clamp_i32(-2147483647i, u_input.b, u_input.d.x)), ~global0.d)), 28351i);
    var var_0 = Struct_4(Struct_1(global0.d.yz << ((vec2<u32>(83262u, global0.b.d) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(global0.b.d, global0.b.b.c), vec2<u32>(0u, u_input.c)) % vec2<u32>(32u))) % vec2<u32>(32u)), ~abs(_wgslsmith_add_i32(global0.e, u_input.b)), 62728u), -1815f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.b.a))), _wgslsmith_f_op_f32(max(global0.b.c.x, _wgslsmith_f_op_f32(-556f * global0.b.c.x))))));
    var var_1 = _wgslsmith_f_op_f32(-global0.b.a);
    var var_2 = Struct_2(-1496f, var_0.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c))), global0.b.c.x, var_0.b), u_input.c);
    let var_3 = ~vec3<u32>(~global0.b.d, abs(_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_2.d, var_2.d), global0.c.c)), abs(~global0.b.b.c));
    return Struct_5(!(!vec3<bool>(false, all(vec4<bool>(global0.a.x, true, true, global0.a.x)), true)));
}

fn func_1(arg_0: vec4<bool>) -> StorageBuffer {
    global2 = array<vec3<i32>, 4>();
    var var_0 = 14812u;
    var var_1 = func_2();
    var var_2 = vec2<bool>(var_1.a.x, !(global0.b.c.x != global0.b.a));
    global1 = false;
    return StorageBuffer(min(vec3<u32>(0u, 1u | global0.c.c, select(0u ^ global0.b.b.c, 1u, !arg_0.x)), vec3<u32>(_wgslsmith_add_u32(72384u, ~u_input.c), ~_wgslsmith_dot_vec4_u32(vec4<u32>(87539u, u_input.c, global0.b.d, 14310u), vec4<u32>(47361u, 1u, 4294967295u, global0.b.b.c)), func_3(~vec4<u32>(global0.b.b.c, u_input.c, u_input.c, global0.c.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-283f, global0.b.c.x, global0.b.c.x, 554f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.a, 605f, -183f, 554f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.a, global0.b.c.x, global0.b.c.x, 996f))))), abs(abs(i32(-1i) * -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec4<bool>(false, false, true, true));
}

