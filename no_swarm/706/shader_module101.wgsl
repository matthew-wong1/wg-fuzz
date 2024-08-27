struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: bool) -> vec3<f32> {
    global0 = array<u32, 6>();
    global0 = array<u32, 6>();
    let var_0 = vec2<bool>(true, all(select(select(vec2<bool>(arg_2, arg_2), select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, true), vec2<bool>(false, true)), !arg_2), vec2<bool>(any(vec2<bool>(false, arg_2)), arg_2), true)));
    global0 = array<u32, 6>();
    var var_1 = u_input.b;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-2220f, -2384f, 1000f), vec3<f32>(-1000f, arg_0, arg_0)))))))));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> i32 {
    global0 = array<u32, 6>();
    var var_0 = select(!vec3<bool>(false, any(arg_1.b.yzy), all(select(vec4<bool>(arg_1.b.x, true, true, false), vec4<bool>(false, arg_1.c.c, false, arg_1.b.x), false))), !arg_1.b.xyy, !select(vec3<bool>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16767u, 6u)], 6u)] >= 0u, arg_1.c.c, true), select(arg_1.b.ywy, !vec3<bool>(false, arg_1.b.x, arg_1.c.c), !vec3<bool>(arg_1.b.x, arg_1.c.c, arg_1.c.c)), arg_1.b.zyz));
    let var_1 = _wgslsmith_f_op_vec3_f32(func_3(arg_1.c.d.x, u_input.a, true));
    let var_2 = arg_1.c.b.x;
    let var_3 = all(select(select(!(!vec2<bool>(var_0.x, arg_1.c.c)), select(!arg_1.b.yy, select(var_0.yz, var_0.xx, arg_1.b.x), true), !select(arg_1.b.xy, var_0.yz, arg_1.b.wx)), vec2<bool>(all(vec3<bool>(arg_1.c.c, var_0.x, false)), true), !arg_1.b.x));
    return u_input.b;
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_dot_vec2_i32(countOneBits(max(vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, u_input.a.x, 2147483647i), -64447i), _wgslsmith_add_vec2_i32(~u_input.a.zx, _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.a.x, -1i))))), vec2<i32>(func_4(u_input.b, Struct_2(_wgslsmith_f_op_vec3_f32(func_3(261f, u_input.a, false)), vec4<bool>(false, false, false, false), Struct_1(vec2<f32>(838f, -354f), vec3<u32>(4294967295u, 68091u, 0u), true, vec3<f32>(-325f, 866f, -1000f)))), reverseBits(_wgslsmith_add_i32(1i, ~u_input.a.x))));
    global0 = array<u32, 6>();
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(325f)), _wgslsmith_f_op_vec3_f32(func_3(-145f, u_input.a, true)).x), 1f) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-224f, 723f) * vec2<f32>(-1000f, -125f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1114f, 1000f) * vec2<f32>(-957f, 1342f))), vec2<f32>(_wgslsmith_f_op_f32(-982f - 1110f), 1f)))));
    var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.x, var_1.x)))), vec2<f32>(-615f, -752f))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 1045f) * _wgslsmith_f_op_f32(-var_1.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x - -292f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(841f + 1000f)))))));
    var var_2 = vec4<i32>(firstLeadingBit(-2147483647i), _wgslsmith_div_i32(u_input.a.x, _wgslsmith_add_i32(-_wgslsmith_add_i32(-4229i, -6771i), reverseBits(_wgslsmith_add_i32(22316i, u_input.a.x)))), -2147483647i | _wgslsmith_add_i32(-53811i, firstLeadingBit(-u_input.b)), -2147483647i);
    return true;
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = true;
    global0 = array<u32, 6>();
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(226f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-162f))))));
    let var_3 = ~(~((min(vec2<u32>(1u, 43805u), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], 10776u)) | _wgslsmith_clamp_vec2_u32(vec2<u32>(57123u, global0[_wgslsmith_index_u32(4294967295u, 6u)]), vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(82167u, 6u)], 6u)], 6u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 6u)], 6u)], 6u)], 22710u))) & _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 25549u), vec2<u32>(global0[_wgslsmith_index_u32(51646u, 6u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 6u)])), ~vec2<u32>(global0[_wgslsmith_index_u32(45484u, 6u)], 20555u))));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1585f, _wgslsmith_f_op_f32(-833f + 353f), _wgslsmith_div_f32(614f, -778f)))), select(!(!(!vec4<bool>(var_1, var_1, var_1, true))), vec4<bool>(!(u_input.a.x > 58292i), var_0, !var_1, true), func_2()), Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1089f, -660f), vec2<f32>(-1795f, 1090f))))), ~abs(~vec3<u32>(var_3.x, global0[_wgslsmith_index_u32(65791u, 6u)], 90588u)), var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(309f, 409f, -1354f) * vec3<f32>(-1286f, -1000f, 409f)))));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>) -> f32 {
    var var_0 = Struct_3(arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-744f, _wgslsmith_f_op_f32(603f * -887f))) - arg_0.a.x), 1338f < _wgslsmith_f_op_f32(round(177f)));
    var var_1 = func_1(-13439i);
    global0 = array<u32, 6>();
    let var_2 = Struct_3(-727f, _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(-arg_0.c.a.x)), arg_0.b.x);
    let var_3 = var_2;
    return -178f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_5(func_1(~firstLeadingBit(_wgslsmith_add_i32(-1i, u_input.b))), vec2<i32>(-(~firstLeadingBit(-58997i)), _wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(-15142i, u_input.a.x, 0i, u_input.a.x), vec4<i32>(u_input.b, -12392i, u_input.b, u_input.a.x)), u_input.a.x))));
    var_0 = 529f;
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(948f, _wgslsmith_f_op_f32(round(-2547f)))));
    global0 = array<u32, 6>();
    global0 = array<u32, 6>();
    global0 = array<u32, 6>();
    var_0 = -580f;
    global0 = array<u32, 6>();
    var_0 = _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(min(305f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + func_1(-2147483647i).c.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(abs(_wgslsmith_add_i32(-1i, u_input.a.x))).c.b.yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-416f)))))), max(firstLeadingBit(func_4(u_input.b, Struct_2(vec3<f32>(123f, 102f, -149f), vec4<bool>(false, false, true, true), Struct_1(vec2<f32>(235f, 193f), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], 1u, global0[_wgslsmith_index_u32(6458u, 6u)]), true, vec3<f32>(-944f, -1916f, 936f))))), _wgslsmith_sub_i32(1931i, u_input.a.x)) ^ countOneBits(~(38299i >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 6u)], 6u)] % 32u))), ~_wgslsmith_div_vec3_u32(min(vec3<u32>(0u, 5460u, 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31808u, 6u)], 6u)], 1u, 1u)), ~vec3<u32>(global0[_wgslsmith_index_u32(0u, 6u)], 1u, 4294967295u)), global0[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(8172u, 6u)], ~(~global0[_wgslsmith_index_u32(~27528u, 6u)])), 6u)]);
}

