struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(-1068f, vec4<u32>(32655u, 72160u, 82724u, 27529u));

var<private> global1: array<Struct_3, 13>;

var<private> global2: bool = true;

var<private> global3: vec3<f32> = vec3<f32>(260f, 1649f, 313f);

var<private> global4: array<i32, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> Struct_3 {
    return global1[_wgslsmith_index_u32(~26956u, 13u)];
}

fn func_3() -> f32 {
    let var_0 = reverseBits(~global0.b.x);
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 154f, global0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1340f, -1384f, global0.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-786f, 404f, global0.a) + vec3<f32>(global0.a, global0.a, global3.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, 325f) + vec3<f32>(-777f, 451f, global3.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -483f), func_1().a, global3.x)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(-304f, global3.x), -1468f, 697f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(579f, global0.a, global0.a))), _wgslsmith_div_vec3_f32(vec3<f32>(global3.x, global3.x, global0.a), vec3<f32>(global0.a, -450f, 318f)))))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-func_1().a));
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -758f, 831f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-954f, -833f, global3.x) + vec3<f32>(var_1.a, 527f, 555f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(154f, -1102f, -293f)))), vec3<bool>(true, true, true))) * vec3<f32>(1395f, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-155f, -1239f)) * var_1.a))));
    let var_2 = ~(~reverseBits(-vec2<i32>(global4[_wgslsmith_index_u32(8413u, 16u)], -30871i))) ^ vec2<i32>(select(0i, (u_input.c | u_input.c) & -52877i, -2147483647i < _wgslsmith_clamp_i32(10475i, global4[_wgslsmith_index_u32(0u, 16u)], 34125i)), _wgslsmith_dot_vec3_i32(abs(~vec3<i32>(u_input.c, 28900i, global4[_wgslsmith_index_u32(0u, 16u)])), vec3<i32>(-1i) * -vec3<i32>(global4[_wgslsmith_index_u32(17932u, 16u)], 2147483647i, global4[_wgslsmith_index_u32(var_0, 16u)])));
    return global0.a;
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> f32 {
    global0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1062f)), true))), _wgslsmith_clamp_vec4_u32(reverseBits(global0.b), vec4<u32>(35308u, 0u, u_input.b, ~abs(48263u)), vec4<u32>(4294967295u, abs(64259u), 0u, countOneBits(~global0.b.x))));
    let var_0 = -16835i;
    global3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, -1070f, -198f))))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(select(1945f, _wgslsmith_f_op_f32(-737f - 208f), false)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global0.a))))), global3.zx)), 4914u);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-func_1().a), _wgslsmith_f_op_f32(floor(var_1.a.x)), _wgslsmith_f_op_f32(round(-1204f)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_sub_u32(min(global0.b.x, global0.b.x), ~global0.b.x)) <= global0.b.x;
    var var_1 = func_1();
    var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(275f)), _wgslsmith_f_op_f32(min(527f, global3.x)), var_0)), Struct_3(_wgslsmith_f_op_f32(floor(global0.a)))))));
    global0 = Struct_4(var_1.a, select(_wgslsmith_div_vec4_u32(max(~vec4<u32>(u_input.d.x, 4294967295u, u_input.a, 4294967295u), global0.b), vec4<u32>(global0.b.x | 4294967295u, ~0u, 22976u, 1u)), ~vec4<u32>(22894u, _wgslsmith_mult_u32(9828u, 0u), 7984u, max(u_input.d.x, global0.b.x)), false));
    let var_2 = !select(vec4<bool>(true, true, var_0, global4[_wgslsmith_index_u32(countOneBits(global0.b.x), 16u)] > abs(global4[_wgslsmith_index_u32(global0.b.x, 16u)])), vec4<bool>(var_0, var_0, true, var_0), !(!(!vec4<bool>(true, false, var_0, true))));
    let var_3 = Struct_2(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, countOneBits(global0.b.x)), vec3<u32>(_wgslsmith_div_u32(u_input.a, 57565u), ~0u, u_input.a)), select(firstLeadingBit(vec3<u32>(4294967295u, u_input.d.x, 4294967295u)), global0.b.wwz, !var_2.x) >> (vec3<u32>(22141u | u_input.b, 19309u | u_input.a, 0u) % vec3<u32>(32u))), countOneBits(1i), !(!(!var_2.x | any(var_2))), var_0);
    let var_4 = global1[_wgslsmith_index_u32(~global0.b.x, 13u)];
    let var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.xx + _wgslsmith_f_op_vec2_f32(select(global3.yx, global3.yy, var_0)))) * vec2<f32>(_wgslsmith_f_op_f32(global3.x + 608f), _wgslsmith_f_op_f32(-1352f - global0.a))), 12402u);
    var var_6 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(global4[_wgslsmith_index_u32(28520u, 16u)], -(~u_input.c), _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.c, var_3.b), max(u_input.c, u_input.c)), 31249i), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1004f, global0.a, -1024f))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), 1000f)), var_5.a.x, var_5.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1123f, _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-263f - 1486f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global3.yx), _wgslsmith_f_op_vec2_f32(select(var_5.a, global3.zy, true)))))), _wgslsmith_div_f32(var_4.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-var_4.a), 244f <= _wgslsmith_f_op_f32(round(var_4.a))))));
}

