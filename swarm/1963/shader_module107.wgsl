struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<bool, 5> = array<bool, 5>(true, false, false, true, true);

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(Struct_1(vec4<i32>(~(-u_input.a), ~2147483647i, _wgslsmith_dot_vec3_i32(global2.a.xyw << (vec3<u32>(u_input.b.x, 50742u, 6755u) % vec3<u32>(32u)), vec3<i32>(-25751i, u_input.a, 1i)), u_input.a), i32(-1i) * -8153i, global2.c));
    let var_1 = _wgslsmith_dot_vec2_u32(abs(~select(vec2<u32>(0u, u_input.c.x), vec2<u32>(u_input.b.x, u_input.c.x), var_0.a.c.zx)) | firstTrailingBit(~_wgslsmith_add_vec2_u32(u_input.c.yx, u_input.c.zy)), reverseBits(u_input.b.zx));
    var var_2 = any(vec3<bool>(all(vec2<bool>(true, false)), true, !(~u_input.a > u_input.a)));
    var_2 = countOneBits(abs(~(var_1 & 15819u))) >= _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.b.x << (var_1 % 32u), 0u, 24535u)), select(~u_input.b, u_input.c, var_0.a.c));
    let var_3 = false;
    return -59525i;
}

fn func_2() -> Struct_1 {
    global2 = Struct_1(global2.a, _wgslsmith_dot_vec3_i32(~vec3<i32>(~(-1i), u_input.a, global2.b | -2147483647i), _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(1i, -4038i, -66000i)), global2.a.yxw << (u_input.b % vec3<u32>(32u)))), vec3<bool>(any(global2.c), global1[_wgslsmith_index_u32(~(_wgslsmith_div_u32(9711u, u_input.c.x) << (firstTrailingBit(1u) % 32u)), 5u)], true));
    var var_0 = true;
    var_0 = true;
    global2 = Struct_1(vec4<i32>(~func_3(), ~(~8492i), -6616i, (abs(u_input.a) >> (_wgslsmith_div_u32(0u, u_input.b.x) % 32u)) | _wgslsmith_dot_vec3_i32(global2.a.xyz & vec3<i32>(-16713i, 2147483647i, global2.a.x), vec3<i32>(2147483647i, global2.a.x, 1i))), global2.a.x, !(!(!(!global2.c))));
    let var_1 = global1[_wgslsmith_index_u32(u_input.c.x, 5u)];
    return Struct_1(vec4<i32>(-global2.b, 31126i, min(global2.b, 18155i), u_input.a), -u_input.a, global2.c);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: Struct_1) -> Struct_4 {
    global2 = func_2();
    let var_0 = Struct_5(_wgslsmith_sub_vec3_u32(min(~(~vec3<u32>(43778u, 11191u, arg_1.c)), vec3<u32>(_wgslsmith_mod_u32(0u, 4294967295u), ~arg_1.a.x, u_input.c.x)), vec3<u32>(~4294967295u, max(43941u, 36119u), 4294967295u) & u_input.b), -_wgslsmith_dot_vec2_i32(arg_2.a.zy, _wgslsmith_div_vec2_i32(arg_2.a.zx, vec2<i32>(1i, u_input.a))) >> (arg_1.a.x % 32u), ~(~1u), vec3<i32>(~(~(-26793i)), ~(-2147483647i) >> (abs(u_input.c.x) % 32u), 0i) | _wgslsmith_mod_vec3_i32(vec3<i32>(-global2.a.x, _wgslsmith_mod_i32(arg_2.a.x, arg_2.b), reverseBits(38702i)), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.b, u_input.a, -16847i), global2.a.wxx), -vec3<i32>(u_input.a, 1i, 12451i))));
    let var_1 = func_2();
    let var_2 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))))), ~(abs(var_0.a.x) ^ 0u), var_0.a.xx, Struct_2(func_2()));
    var var_3 = var_2;
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a))))), Struct_2(Struct_1(arg_2.a >> (firstTrailingBit(vec4<u32>(var_2.c.x, 44074u, 1u, var_3.b)) % vec4<u32>(32u)), _wgslsmith_mod_i32(arg_2.a.x, -2147483647i), var_1.c)), var_3.d, Struct_2(func_2()), var_2.c.x);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4) -> vec3<bool> {
    let var_0 = Struct_3(arg_1.a, u_input.c.x, firstLeadingBit(vec2<u32>(u_input.c.x, abs(30517u >> (u_input.b.x % 32u)))), arg_1.b);
    let var_1 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0)), Struct_5(~(~reverseBits(u_input.c)), u_input.a, u_input.b.x, (max(vec3<i32>(arg_1.d.a.a.x, 1i, -2147483647i), vec3<i32>(var_0.d.a.b, global2.a.x, -33431i)) ^ arg_1.b.a.a.zyz) >> (~vec3<u32>(12295u, u_input.c.x, 0u) % vec3<u32>(32u))), Struct_1(-_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a, 1i, var_0.d.a.b, 2147483647i), countOneBits(global2.a)), 80099i, select(func_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -545f, 678f, global0.x))), Struct_5(vec3<u32>(0u, arg_1.e, u_input.b.x), u_input.a, var_0.c.x, vec3<i32>(-37199i, 1i, -684i)), var_0.d.a).c.a.c, func_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1058f, global0.x, 390f, global0.x))), Struct_5(vec3<u32>(77553u, 10992u, u_input.b.x), 24566i, 37458u, var_0.d.a.a.www), func_1(vec4<f32>(global0.x, 786f, 126f, -210f), Struct_5(u_input.c, arg_1.d.a.a.x, 4294967295u, arg_1.c.a.a.zxy), var_0.d.a).d.a).c.a.c, _wgslsmith_f_op_f32(-arg_1.a) > _wgslsmith_f_op_f32(round(-809f)))));
    var var_2 = _wgslsmith_mult_i32(firstTrailingBit(var_1.d.a.a.x), 0i);
    var var_3 = 833f;
    var var_4 = Struct_2(Struct_1(_wgslsmith_clamp_vec4_i32(max(select(vec4<i32>(arg_1.b.a.b, global2.a.x, var_0.d.a.a.x, -21091i), var_0.d.a.a, vec4<bool>(var_0.d.a.c.x, var_1.d.a.c.x, false, true)), vec4<i32>(var_1.d.a.b, arg_1.d.a.a.x, 0i, u_input.a)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, arg_1.c.a.b, 3149i, var_0.d.a.b), func_1(arg_0, Struct_5(vec3<u32>(u_input.b.x, 4294967295u, 4294967295u), global2.b, var_0.c.x, vec3<i32>(2147483647i, var_0.d.a.b, 0i)), arg_1.c.a).b.a.a), var_1.b.a.a >> (_wgslsmith_mult_vec4_u32(vec4<u32>(62971u, var_1.e, u_input.b.x, arg_1.e), vec4<u32>(1u, 1u, var_0.c.x, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_mult_i32(17454i, ~(~arg_1.d.a.a.x)), vec3<bool>(true, true, true)));
    return vec3<bool>(var_0.d.a.c.x, func_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1314f), arg_0.x, 474f, var_0.a), Struct_5(vec3<u32>(~0u, _wgslsmith_add_u32(var_1.e, u_input.c.x), 57238u), abs(-21400i), select(~arg_1.e, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.e, u_input.b.x, var_1.e, var_1.e), vec4<u32>(21312u, var_0.b, 4294967295u, arg_1.e)), true), vec3<i32>(_wgslsmith_div_i32(79977i, var_4.a.b), var_1.d.a.b, -var_4.a.b)), var_0.d.a).d.a.c.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~(~u_input.b.x), u_input.b.x, 0u);
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(global0.x - 1438f), _wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_div_f32(487f, global0.x))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), -591f))), !select(vec3<bool>(global2.c.x, false, true), vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(var_0.x, 5u)] && true)));
    var var_1 = Struct_1(~vec4<i32>(1i, _wgslsmith_div_i32(_wgslsmith_mult_i32(0i, u_input.a), -47131i), -(4504i << (u_input.b.x % 32u)), 1i), ~(-abs(-9667i & global2.a.x)), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(848f, 1719f, global0.x, global0.x), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 535f, global0.x, 1019f), vec4<f32>(global0.x, global0.x, -1545f, -571f)))) + vec4<f32>(_wgslsmith_f_op_f32(max(-1155f, global0.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -923f), -779f)), func_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-208f, 267f, 311f, global0.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-138f, global0.x, 1000f, global0.x))))), Struct_5(vec3<u32>(11597u, 4294967295u, 4294967295u), u_input.a, ~var_0.x, max(vec3<i32>(0i, -2147483647i, -34172i), global2.a.zzz)), Struct_1(global2.a, ~u_input.a, vec3<bool>(global2.c.x, global1[_wgslsmith_index_u32(u_input.b.x, 5u)], global2.c.x)))));
    let var_2 = _wgslsmith_add_i32(~(-2147483647i), var_1.b);
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(30070u), vec2<u32>(var_0.x, 31698u));
}

