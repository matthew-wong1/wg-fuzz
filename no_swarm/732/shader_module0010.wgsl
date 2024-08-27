struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<f32, 28>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: Struct_2, arg_3: Struct_3) -> vec3<bool> {
    var var_0 = false;
    global1 = array<f32, 28>();
    let var_1 = true;
    var var_2 = select(~vec4<u32>(~4294967295u, select(64505u, 13924u, arg_2.a.a.x), ~47313u, _wgslsmith_dot_vec2_u32(vec2<u32>(30429u, 22539u), vec2<u32>(65714u, 27078u))), abs(vec4<u32>(1u, firstTrailingBit(4294967295u), 69945u, ~80080u)), global0.x) ^ ~select(_wgslsmith_mod_vec4_u32(vec4<u32>(36611u, 4294967295u, 50851u, 30621u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u), !all(vec4<bool>(false, false, arg_3.b.a.x, global0.x)));
    var_0 = var_1;
    return vec3<bool>(var_1 & var_1, any(!(!select(vec2<bool>(var_1, false), vec2<bool>(arg_2.b.c, false), arg_3.b.c))), any(arg_2.d.a));
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = Struct_4(Struct_3(Struct_1(!(!vec3<bool>(global0.x, arg_0.b.c, global0.x)), arg_0.a.b, any(global0.ww)), Struct_1(select(!vec3<bool>(false, true, global0.x), !vec3<bool>(true, arg_0.a.c, true), true), -_wgslsmith_clamp_i32(arg_0.b.b, arg_0.b.b, 1805i), !any(arg_0.a.a.yy))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-405f, -294f))))), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, 1u, _wgslsmith_clamp_u32(4294967295u, 1u, 64743u)), 28u)], _wgslsmith_f_op_f32(-925f - global1[_wgslsmith_index_u32(1u, 28u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 28u)]) - _wgslsmith_f_op_f32(min(-1042f, global1[_wgslsmith_index_u32(0u, 28u)]))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(130756u, 28u)]))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, global1[_wgslsmith_index_u32(1u, 28u)]))))));
    global1 = array<f32, 28>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.x))));
    var var_2 = 36156u;
    let var_3 = Struct_2(var_0.a.b, Struct_1(var_0.a.b.a, -2147483647i >> (_wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(13960u, 0u)) % 32u), arg_0.a.a.x), var_0.a.a, var_0.a.a, arg_0.b.b);
    return _wgslsmith_div_i32(abs(firstLeadingBit(-var_0.a.a.b << (0u % 32u))), max(arg_0.a.b, u_input.a));
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec2<i32>) -> Struct_2 {
    global1 = array<f32, 28>();
    return Struct_2(Struct_1(global0.wyz, func_3(arg_1), false), Struct_1(func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f - arg_0), global1[_wgslsmith_index_u32(9751u, 28u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 28u)]), Struct_2(arg_1.a, arg_1.a, arg_1.b, arg_1.b, max(u_input.a, 2147483647i)), arg_1), -firstLeadingBit(countOneBits(u_input.a)), !(~(-43272i) == -arg_1.a.b)), arg_1.b, Struct_1(vec3<bool>(false, true, true), _wgslsmith_div_i32(arg_1.b.b, select(7955i, -2147483647i, true)) >> (16606u % 32u), any(select(vec4<bool>(global0.x, true, arg_1.a.c, false), vec4<bool>(arg_1.a.a.x, arg_1.b.a.x, true, true), true))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~max(vec3<i32>(arg_1.b.b, u_input.a, -13824i), vec3<i32>(arg_1.b.b, u_input.a, u_input.a)), max(vec3<i32>(-2147483647i, u_input.a, u_input.a), reverseBits(vec3<i32>(41490i, 1i, arg_2.x)))), vec3<i32>(-1i) * -vec3<i32>(-2147483647i, arg_1.b.b, -41466i)));
}

fn func_4(arg_0: Struct_2) -> i32 {
    var var_0 = vec4<i32>(_wgslsmith_add_i32(firstLeadingBit(u_input.a), -38195i), _wgslsmith_add_i32(_wgslsmith_sub_i32(arg_0.c.b, i32(-1i) * -7036i), abs(arg_0.a.b)), ~(-13367i), -min(_wgslsmith_mult_i32(-arg_0.d.b, ~arg_0.c.b), 0i));
    var var_1 = -2147483647i;
    var_0 = vec4<i32>(-7666i, min(u_input.a, 6608i), func_2(_wgslsmith_f_op_f32(round(-172f)), Struct_3(Struct_1(arg_0.d.a, _wgslsmith_sub_i32(arg_0.b.b, -10496i), global0.x), func_2(230f, Struct_3(Struct_1(global0.zxy, var_0.x, arg_0.d.c), Struct_1(vec3<bool>(false, arg_0.a.c, global0.x), arg_0.a.b, true)), firstTrailingBit(var_0.yz)).c), firstLeadingBit(vec2<i32>(_wgslsmith_mod_i32(2147483647i, 2147483647i), 2147483647i))).d.b, 1507i);
    let var_2 = func_2(_wgslsmith_f_op_f32(ceil(-1816f)), Struct_3(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 28u)])), Struct_3(func_2(global1[_wgslsmith_index_u32(0u, 28u)], Struct_3(arg_0.c, arg_0.b), var_0.wz).c, func_2(global1[_wgslsmith_index_u32(0u, 28u)], Struct_3(arg_0.a, arg_0.d), vec2<i32>(u_input.a, arg_0.a.b)).d), firstTrailingBit(var_0.yy)).b, func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1294f, 503f, arg_0.b.c)), _wgslsmith_f_op_f32(step(-890f, 1114f))), Struct_3(Struct_1(arg_0.a.a, u_input.a, global0.x), func_2(-1088f, Struct_3(Struct_1(vec3<bool>(true, arg_0.c.a.x, global0.x), var_0.x, true), Struct_1(arg_0.a.a, -2147483647i, arg_0.a.c)), var_0.zw).d), -vec2<i32>(-16427i, 0i) << (select(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 34768u), global0.x) % vec2<u32>(32u))).a), _wgslsmith_add_vec2_i32(max(var_0.xz, ~(var_0.xx & vec2<i32>(0i, 1i))), abs(-var_0.zw)));
    var_1 = _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a, min(2147483647i, 1i)), firstTrailingBit(~(-var_2.c.b)));
    return -select(0i, i32(-1i) * -1i, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(any(select(select(vec3<bool>(false, false, global0.x), vec3<bool>(true, true, true), global0.x != global0.x), !global0.wyz, global0.x)), true, select(true, !any(vec4<bool>(global0.x, global0.x, false, true)), true), all(select(global0.zyw, vec3<bool>(true, any(vec4<bool>(global0.x, global0.x, true, global0.x)), !global0.x), select(global0.xyw, func_1(global1[_wgslsmith_index_u32(52622u, 28u)], 926f, Struct_2(Struct_1(vec3<bool>(true, true, global0.x), 0i, true), Struct_1(global0.www, u_input.a, global0.x), Struct_1(vec3<bool>(global0.x, true, global0.x), u_input.a, global0.x), Struct_1(vec3<bool>(true, global0.x, false), u_input.a, global0.x), u_input.a), Struct_3(Struct_1(vec3<bool>(false, global0.x, true), 0i, global0.x), Struct_1(vec3<bool>(true, global0.x, global0.x), 11577i, false))), !global0.x))));
    var var_0 = func_4(func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(1582u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)], global0.x))))), Struct_3(Struct_1(vec3<bool>(global0.x, false, true), 55092i, true), Struct_1(vec3<bool>(false, global0.x, true), 34051i & u_input.a, global0.x)), vec2<i32>(43225i, -8895i)));
    var var_1 = global0.zz;
    var_1 = !global0.xy;
    global0 = !vec4<bool>(global0.x, global0.x, var_1.x, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(reverseBits(~(~vec2<u32>(0u, 34357u))), ~firstTrailingBit(countOneBits(vec2<u32>(15334u, 26385u))), ~vec2<u32>(~78655u, ~12230u)), 3840u, ~(~(-2147483647i)));
}

