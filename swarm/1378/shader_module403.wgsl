struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24>;

var<private> global1: vec4<u32> = vec4<u32>(71728u, 15972u, 0u, 16986u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec4<u32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(~(~(~(~1u)))), 24u)];
    var var_1 = _wgslsmith_f_op_f32(-arg_2.b.x);
    global1 = vec4<u32>(arg_3.x, arg_0, 4294967295u, 17927u);
    global0 = array<bool, 24>();
    let var_2 = Struct_2(abs(~arg_1.xz), !vec2<bool>(!(!global0[_wgslsmith_index_u32(19647u, 24u)]), false || !global0[_wgslsmith_index_u32(global1.x, 24u)]), reverseBits(global1.yw << (~vec2<u32>(global1.x, u_input.b.x) % vec2<u32>(32u))) & vec2<u32>(28029u, ~(~1u)));
    return _wgslsmith_clamp_u32(10580u, 60317u, ~global1.x);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: i32, arg_3: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_div_u32(1u, ~(~u_input.b.x));
    global0 = array<bool, 24>();
    let var_1 = max(max(~(~u_input.b), firstTrailingBit(vec3<u32>(u_input.b.x, reverseBits(u_input.b.x), countOneBits(4294967295u)))), global1.zzy);
    var_0 = ~(~firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_add_u32(var_1.x, global1.x), global1.x)));
    let var_2 = Struct_1(vec4<bool>(!(!global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, arg_0), 24u)]), (any(vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 24u)], global0[_wgslsmith_index_u32(48770u, 24u)], true, false)) & any(vec2<bool>(false, false))) & global0[_wgslsmith_index_u32(0u, 24u)], false || global0[_wgslsmith_index_u32(arg_0, 24u)], all(vec4<bool>(all(vec2<bool>(false, false)), true, false, global0[_wgslsmith_index_u32(var_1.x, 24u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-258f, 1069f, -448f), vec3<f32>(-1000f, -172f, arg_1), vec3<bool>(false, global0[_wgslsmith_index_u32(global1.x, 24u)], global0[_wgslsmith_index_u32(global1.x, 24u)]))) - _wgslsmith_div_vec3_f32(vec3<f32>(1826f, 497f, arg_1), vec3<f32>(arg_1, -419f, arg_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) - vec3<f32>(-391f, 168f, 759f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 351f, arg_1) + vec3<f32>(-286f, arg_1, 1359f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 540f, arg_1) - vec3<f32>(arg_1, arg_1, -705f))))), select(!vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 24u)], false, true), !(!select(vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]), vec3<bool>(true, true, true), vec3<bool>(global0[_wgslsmith_index_u32(49206u, 24u)], false, false))), select(!(!vec3<bool>(false, global0[_wgslsmith_index_u32(108948u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)])), !(!vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 24u)], global0[_wgslsmith_index_u32(var_1.x, 24u)])), vec3<bool>(global0[_wgslsmith_index_u32(firstTrailingBit(100639u), 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(max(arg_0, u_input.b.x), 24u)]))), select(!vec2<bool>(global0[_wgslsmith_index_u32(~arg_0, 24u)], all(vec3<bool>(true, false, false))), vec2<bool>(global0[_wgslsmith_index_u32(~max(u_input.b.x, arg_0), 24u)], _wgslsmith_f_op_f32(-890f * arg_1) <= arg_1), select(vec2<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 24u)], false, global0[_wgslsmith_index_u32(var_1.x, 24u)])), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.x, u_input.b.x), 24u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], arg_2 > 0i), vec2<bool>(true, u_input.a.x <= -430i))));
    return 222f;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec4<i32>) -> i32 {
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    global1 = ~vec4<u32>(countOneBits(arg_0.c.x), abs(_wgslsmith_add_u32(4294967295u, global1.x)), arg_0.a.x, _wgslsmith_div_u32(u_input.b.x, 1u));
    var var_0 = vec4<f32>(_wgslsmith_div_f32(1511f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(func_3(u_input.b.x, vec4<u32>(0u, u_input.b.x, arg_0.c.x, 73563u), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(37877u, 24u)], arg_0.b.x, false, global0[_wgslsmith_index_u32(arg_0.a.x, 24u)]), vec3<f32>(1000f, 2534f, 642f), vec3<bool>(arg_0.b.x, arg_0.b.x, global0[_wgslsmith_index_u32(arg_0.c.x, 24u)]), arg_0.b), vec4<u32>(global1.x, arg_0.a.x, u_input.b.x, u_input.b.x)), _wgslsmith_div_f32(1231f, 752f), _wgslsmith_sub_i32(53032i, u_input.a.x), select(vec3<i32>(arg_2.x, arg_1, 0i), vec3<i32>(22104i, u_input.a.x, arg_1), vec3<bool>(true, true, arg_0.b.x)))), -1126f)), _wgslsmith_f_op_f32(trunc(-1851f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-730f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(4294967295u, -434f, -9590i, arg_2.wzz)) * _wgslsmith_f_op_f32(f32(-1f) * -1169f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(460f + 1956f) * _wgslsmith_f_op_f32(-374f - 701f))))));
    global1 = vec4<u32>(u_input.b.x, ~(~arg_0.c.x), abs(16730u) & ~(~u_input.b.x), 4294967295u);
    return _wgslsmith_div_i32(~(-2147483647i), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-(arg_2.x >> (arg_0.a.x % 32u)), u_input.a.x, _wgslsmith_sub_i32(-31325i, ~arg_2.x)), 2147483647i));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = arg_2.x;
    var var_1 = Struct_1(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(global1.x << (~4294967295u % 32u), 24u)], global0[_wgslsmith_index_u32(83638u, 24u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x)), _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, global0[_wgslsmith_index_u32(1u, 24u)]))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x)))), arg_0, _wgslsmith_div_i32(1i, -34190i) <= _wgslsmith_dot_vec3_i32(arg_3.xwz, arg_1.ywz)))), select(select(!vec3<bool>(true, global0[_wgslsmith_index_u32(11215u, 24u)], global0[_wgslsmith_index_u32(global1.x, 24u)]), vec3<bool>(true, true, true), select(!vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 24u)], true, true), !vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(18000u, 24u)]), select(true, global0[_wgslsmith_index_u32(4245u, 24u)], true))), vec3<bool>(!all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], true, true, global0[_wgslsmith_index_u32(5328u, 24u)])), false, (arg_3.x != arg_1.x) || all(vec3<bool>(true, true, false))), true), vec2<bool>(true, all(vec4<bool>(var_0 < -50515i, all(vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 24u)], true)), true, any(vec4<bool>(true, global0[_wgslsmith_index_u32(global1.x, 24u)], false, global0[_wgslsmith_index_u32(24814u, 24u)]))))));
    var_1 = Struct_1(!select(var_1.a, !select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 24u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(56667u, 24u)], var_1.a.x, global0[_wgslsmith_index_u32(26528u, 24u)]), var_1.a), select(vec4<bool>(var_1.d.x, true, true, false), select(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)], var_1.c.x), var_1.a, vec4<bool>(var_1.d.x, true, global0[_wgslsmith_index_u32(global1.x, 24u)], false)), true)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, -2320f, 1830f), arg_0, false)), !select(select(var_1.c, var_1.c, true), select(var_1.c, !var_1.a.zwy, var_1.a.wwz), select(var_1.c, var_1.a.wyw, true)), select(var_1.c.zy, select(vec2<bool>(global0[_wgslsmith_index_u32(48945u, 24u)], any(var_1.a.zy)), var_1.a.zz, -1787f > _wgslsmith_f_op_f32(func_4(u_input.b.x, arg_0.x, -1i, vec3<i32>(var_0, 1i, 0i)))), select(var_1.d, !vec2<bool>(var_1.a.x, false), !var_1.d)));
    var_1 = Struct_1(select(var_1.a, vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], all(select(vec2<bool>(var_1.a.x, global0[_wgslsmith_index_u32(4294967295u, 24u)]), var_1.a.yx, false)), true, -1i > firstTrailingBit(arg_1.x)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(944f, arg_0.x, arg_0.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.b, var_1.b)))), select(select(!(!vec3<bool>(true, var_1.d.x, global0[_wgslsmith_index_u32(u_input.b.x, 24u)])), !(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(global1.x, 24u)])), !var_1.d.x), select(!(!var_1.c), !select(vec3<bool>(false, true, false), var_1.c, var_1.a.xxx), var_1.a.xyz), any(!var_1.c.yz)), select(select(vec2<bool>(true, false), select(!vec2<bool>(var_1.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 24u)]), var_1.c.xz, var_1.c.yy), var_1.d.x), select(select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], global0[_wgslsmith_index_u32(u_input.b.x, 24u)]), var_1.d, var_1.c.zz), !var_1.c.xx, vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(u_input.b.x, 24u)])), !var_1.d, var_1.c.x), vec2<bool>(true, false)));
    let var_2 = _wgslsmith_add_u32(global1.x, global1.x);
    return Struct_1(select(select(!(!var_1.a), select(var_1.a, !vec4<bool>(false, false, var_1.a.x, false), !var_1.a), !var_1.a), !select(!vec4<bool>(global0[_wgslsmith_index_u32(117520u, 24u)], true, false, true), select(vec4<bool>(var_1.d.x, false, global0[_wgslsmith_index_u32(0u, 24u)], true), vec4<bool>(var_1.a.x, true, false, true), global0[_wgslsmith_index_u32(global1.x, 24u)]), !var_1.a), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(func_3(u_input.b.x, vec4<u32>(u_input.b.x, var_2, global1.x, var_2), Struct_1(vec4<bool>(var_1.d.x, false, true, var_1.a.x), arg_0, var_1.c, vec2<bool>(false, var_1.a.x)), vec4<u32>(u_input.b.x, 45619u, var_2, 20170u)), ~96549u), 24u)]), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)))), select(var_1.a.wzz, select(select(var_1.a.zww, !vec3<bool>(var_1.a.x, false, global0[_wgslsmith_index_u32(0u, 24u)]), global0[_wgslsmith_index_u32(~4294967295u, 24u)]), !vec3<bool>(var_1.d.x, global0[_wgslsmith_index_u32(var_2, 24u)], false), vec3<bool>(true, true, any(var_1.d))), any(var_1.a)), var_1.c.yy);
}

fn func_1() -> f32 {
    let var_0 = func_5(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(829f, -1366f, true)), -1169f)) + 992f), _wgslsmith_f_op_f32(438f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-414f, 204f)))), _wgslsmith_f_op_f32(-1f)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i & _wgslsmith_clamp_i32(-1i, u_input.a.x, u_input.a.x), u_input.a.x, func_2(Struct_2(vec2<u32>(u_input.b.x, u_input.b.x), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], false), vec2<u32>(u_input.b.x, 67591u)), -36375i, vec4<i32>(-2147483647i, -56054i, u_input.a.x, 27147i)) & 1i, select(u_input.a.x & -54258i, ~5807i, global0[_wgslsmith_index_u32(global1.x, 24u)] && false)), ~select(_wgslsmith_add_vec4_i32(vec4<i32>(-2039i, u_input.a.x, u_input.a.x, -1i), vec4<i32>(u_input.a.x, u_input.a.x, -1i, -1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(59314i, u_input.a.x, 85490i, 31767i), vec4<i32>(2147483647i, -2147483647i, u_input.a.x, u_input.a.x)), true)), vec2<i32>(-max(~u_input.a.x, 0i), _wgslsmith_dot_vec3_i32(~(~vec3<i32>(u_input.a.x, -64915i, -1i)), reverseBits(u_input.a) << (_wgslsmith_div_vec3_u32(vec3<u32>(global1.x, u_input.b.x, u_input.b.x), global1.wxy) % vec3<u32>(32u)))), -abs(~(-vec4<i32>(u_input.a.x, u_input.a.x, -7121i, 0i))));
    var var_1 = func_5(vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x), -vec4<i32>(2731i, 27629i, ~18908i, u_input.a.x), _wgslsmith_add_vec2_i32(vec2<i32>(3214i, u_input.a.x), u_input.a.zy), ~(~_wgslsmith_clamp_vec4_i32(-vec4<i32>(-1i, u_input.a.x, 1i, u_input.a.x), vec4<i32>(u_input.a.x, -52557i, -1i, 1i), vec4<i32>(-42143i, u_input.a.x, 33214i, u_input.a.x) & vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))));
    var_1 = var_0;
    var var_2 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.b)) - _wgslsmith_f_op_vec3_f32(var_0.b - var_1.b))))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(4637i, 1i, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 61707i, u_input.a.x), vec4<i32>(-2147483647i, 4552i, u_input.a.x, u_input.a.x))), vec4<i32>(-u_input.a.x, firstTrailingBit(u_input.a.x), 1i, -u_input.a.x) | vec4<i32>(18397i, _wgslsmith_dot_vec2_i32(u_input.a.zz, u_input.a.yx), func_2(Struct_2(global1.xz, vec2<bool>(var_1.c.x, false), vec2<u32>(4294967295u, global1.x)), u_input.a.x, vec4<i32>(6383i, -9971i, 1i, u_input.a.x)), reverseBits(u_input.a.x))), -(vec2<i32>(1i, -2147483647i) & firstLeadingBit(firstLeadingBit(u_input.a.zx))), vec4<i32>(u_input.a.x, u_input.a.x << (4294967295u % 32u), u_input.a.x, u_input.a.x));
    var var_3 = Struct_2(vec2<u32>(~4294967295u, reverseBits(0u)) >> (firstLeadingBit(vec2<u32>(global1.x, _wgslsmith_sub_u32(u_input.b.x, 4407u))) % vec2<u32>(32u)), !var_0.c.xx, ~(~max(u_input.b.xx, ~global1.yw)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 24>();
    global1 = min(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, 33262u, global1.x, 1u), vec4<u32>(u_input.b.x, 0u, global1.x, u_input.b.x)), vec4<u32>(21436u, u_input.b.x, global1.x, 0u), u_input.a.x > -2147483647i), vec4<u32>(48721u, u_input.b.x, u_input.b.x, 37294u) & ~vec4<u32>(74484u, 32862u, 0u, u_input.b.x)), ~abs(max(vec4<u32>(4294967295u, 4294967295u, 0u, global1.x), vec4<u32>(0u, u_input.b.x, u_input.b.x, 73566u)))), select(vec4<u32>(0u, firstLeadingBit(~50197u), ~_wgslsmith_div_u32(0u, 52706u), firstTrailingBit(4294967295u)), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 74206u, u_input.b.x, 0u), vec4<u32>(0u, 4294967295u, 30161u, u_input.b.x) << (vec4<u32>(25627u, 3564u, 71735u, u_input.b.x) % vec4<u32>(32u))), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(1u, 17208u)), global1.xx), 24u)], any(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 24u)], true, global0[_wgslsmith_index_u32(global1.x, 24u)])), global0[_wgslsmith_index_u32(1u, 24u)], !(true | global0[_wgslsmith_index_u32(u_input.b.x, 24u)]))));
    global0 = array<bool, 24>();
    let var_0 = _wgslsmith_add_u32(0u, firstLeadingBit(~(~global1.x)));
    let var_1 = vec4<f32>(1286f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-171f + 608f) - 203f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(521f, 2264f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1669f, -248f)))) - -200f), -109f);
    let var_2 = _wgslsmith_f_op_f32(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a.x & u_input.a.x, u_input.a.x | u_input.a.x, ~1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a.x), u_input.a.zx)), -(~vec4<i32>(~2836i, ~u_input.a.x, -5154i, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 1i))), var_1.wx);
}

