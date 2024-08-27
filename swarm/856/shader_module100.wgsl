struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global1: vec2<i32> = vec2<i32>(748i, 31108i);

var<private> global2: bool = true;

var<private> global3: array<f32, 2> = array<f32, 2>(-1578f, 1000f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<bool> {
    return !vec4<bool>(all(!(!vec4<bool>(true, true, global0.x, global0.x))), global0.x, true, !all(select(global0.wyz, vec3<bool>(global0.x, true, false), false)));
}

fn func_2() -> Struct_3 {
    var var_0 = 205f;
    var var_1 = all(!(!vec4<bool>(global0.x || global0.x, true, any(vec2<bool>(false, global0.x)), !global0.x)));
    var var_2 = select(global0.yy, global0.zy, (_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~50932u, 2u)] * _wgslsmith_div_f32(global3[_wgslsmith_index_u32(0u, 2u)], -1521f)) == _wgslsmith_f_op_f32(round(-1478f))) && all(!func_3()));
    let var_3 = global3[_wgslsmith_index_u32(~76697u, 2u)];
    var var_4 = Struct_1(~abs(abs(select(vec4<u32>(27282u, 4294967295u, 29891u, 4294967295u), vec4<u32>(0u, 6443u, 53554u, 0u), vec4<bool>(false, false, false, true)))), select(func_3(), !vec4<bool>(false, var_2.x, true, true), select(!func_3(), func_3(), true)), u_input.a.yy);
    return Struct_3(false, Struct_2(vec4<bool>(var_4.b.x, false & all(var_4.b.ww), true && any(vec2<bool>(false, global0.x)), all(!vec4<bool>(true, global0.x, var_2.x, true)))));
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = func_2();
    var var_1 = min(0u, ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, 18273u, 66081u)), vec3<u32>(abs(34273u), 101258u, ~0u)));
    var var_2 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(firstTrailingBit(4294967295u), 1u), 1u, 0u, 1u), var_0.b.a, abs(vec2<i32>(-1i, u_input.a.x)));
    var var_3 = Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(var_2.a, reverseBits(var_2.a)), var_2.a) & _wgslsmith_sub_vec4_u32(vec4<u32>(1u & var_2.a.x, _wgslsmith_div_u32(46728u, 4294967295u), var_2.a.x, ~var_2.a.x), var_2.a), vec4<bool>(!(!any(var_0.b.a)), func_3().x, var_2.b.x, all(!func_3())), ~var_2.c);
    let var_4 = 4294967295u;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(select(vec4<bool>(~global1.x >= abs(-45067i), all(vec2<bool>(global0.x, true)), global0.x, false), vec4<bool>(all(!vec4<bool>(global0.x, true, global0.x, global0.x)), all(vec3<bool>(global0.x, global0.x, global0.x)), global0.x, func_1(_wgslsmith_f_op_f32(trunc(-1167f)))), !any(func_2().b.a.wy)));
    var_0 = Struct_2(!var_0.a);
    global2 = var_0.a.x;
    global2 = global0.x;
    var var_1 = func_2();
    var var_2 = vec2<u32>(min(firstLeadingBit(4294967295u), ~_wgslsmith_clamp_u32(82018u, 84007u, 53160u) << (1u % 32u)), 1u);
    let var_3 = Struct_4(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(reverseBits(0u), ~var_2.x), var_2.x), _wgslsmith_div_u32(~(~var_2.x), var_2.x)), func_2().b, ~_wgslsmith_mult_vec3_i32(u_input.a | _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, u_input.b), u_input.a), -u_input.a));
    var var_4 = global3[_wgslsmith_index_u32(abs((_wgslsmith_mod_u32(abs(68990u), var_3.a.x) >> (countOneBits(_wgslsmith_div_u32(var_2.x, 41365u)) % 32u)) & 1u), 2u)];
    var var_5 = ~var_3.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_f32(2381f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -625f))), global1.x & max(global1.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c, u_input.c, 2147483647i, u_input.c), vec4<i32>(27432i, var_3.c.x, 0i, 1i) & vec4<i32>(var_3.c.x, -5200i, 17261i, -28628i))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(43558u, 2u)])), global3[_wgslsmith_index_u32(var_3.a.x ^ 77092u, 2u)], global3[_wgslsmith_index_u32(~var_2.x, 2u)], _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(var_2.x, 2u)]))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1108f), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_3.a.x, reverseBits(14458u)), 2u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(9218u, 2u)] - 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2091f))))));
}

